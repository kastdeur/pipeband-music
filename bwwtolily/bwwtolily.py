#!/usr/bin/env python
#
#bwwtolily: will convert a bww file to a lilypond file
#copyright: 2008 Jezra Lickter
#GPL v3

from optparse import OptionParser
import sys,os,re,subprocess

version = "0.4.2"

#make a print function to handle various version of python
def do_print(string):
	try:
		eval("print "+string)
	except:
		print(string)

#define the class that will convert a bww file to a lilypond file
class bwwtolily :
	def __init__(self,addmidi=False):
			self.tune_elements = []
			self.most_recent_note = 0
			self.in_note_group=False
			self.slur_tie_pending = False
			self.last_group_close=0
			'''compile a few regex queries'''
			#make a regex to determine if something is a lilypond note
			self.regex_lilynote= re.compile("[abcdefgAG][0-9]*")
			#try to determine the time signature
			self.sig_regex = re.compile("([0-9])_([0-9])")
			#a regex to find notes
			self.regex_note_info=re.compile("(?P<note>[A-Z]+)(?P<dir>[a-z]*)_(?P<time>[0-9]{1,2})")
			#a regex to find grace notes
			self.regex_grace_note = re.compile("([h|l]*[abcdefgt])g")
			#a regex to parse doublings
			self.regex_doubling = re.compile("^db([h|l]*[g|a|b|c|d|e|f]{1})")
			#a regex to parse half_doublings
			self.regex_half_doubling = re.compile("^hdb([h|l]*[g|a|b|c|d|e|f]{1})")
			#a regex for finding strikes
			self.regex_strike = re.compile("str([h|l]*[abcdefg])")
			#a regex to find dots
			self.regex_dot = re.compile("'[h|l]*[abcdefg]")
			#a regex to find sub repeats
			self.regex_sub_repeat = re.compile("'([0-9]+)")
			#a regex to find note slurs, not slur embellishments
			self.regex_slur = re.compile("\^(?P<note_count>[0-9])(?P<end_note>[a-z]*)")
			#a regex to find ties
			self.regex_tie = re.compile("\^ts(.*)*\^te")
			#we need a list to ignore
			self.ignore_elements = ("sharpf","sharpc","space","&")
			#create a dictionary of common bww elements and their lily counterparts
			self.transpose_dict = {
			"!":"\\bar \"|\"\n",
			"!I":"\\bar \".|\" \\break \n",
			#"''!I":"\\set Score.repeatCommands = #'( end-repeat ) \\break \n",
			"''!I":"\\bar \":|\" \\break\n",
			#"''!I":"} \\break \n",
			"I!''":"\\bar \"|:\"",
			"I!":"\\bar \"|.\"",
			#"I!''":"\\set Score.repeatCommands = #'( start-repeat )\n",

			#"I!''":"\n\\repeat volta 2 {\n",
			"_'":"\\set Score.repeatCommands = #'((volta #f)) \\bar \"|\"\n",
			"!t":"\\bar \"|\" \\break\n\n",
			"thrd":"\\thrwd",
			"gbr":"\\gbirl",
			"brl":"\\wbirl",
			"abr":"\\birl",
			"lgstd":"\\dbld",
			"gste":"\\slure",
			"grp":"\\grip",
			"tar":"\\taor",
			"gstd":"\\slurd",
			"tdbf":"\\tdblf"
			}
			#are we adding midi?
			if addmidi:
				self.lily_midi="\midi{}"
			else:
				self.lily_midi=''

	def set_file(self,file_path):
			#determine the absolute path to the file
			abs_file = os.path.join(os.getcwd(),file_path)
			file_name = os.path.basename(abs_file)
			(self.name,ext) = file_name.split(".")

			#does the file exist?
			if os.path.isfile(abs_file):
				self.original_file = abs_file
				self.file_dir = os.path.dirname(abs_file)
			else:
				raise Exception(bww_file_path+" is not a file")

	def quit(self,string=""):
			if string!="":
				do_print( string)
			sys.exit()

	def parse(self):
			'''reate a string that represents the converted
			contents of the file'''
			#open the file read only
			file_handle = open(self.original_file,"r")
			#read the contents of the file
			file_text = file_handle.read()
			#get the title,type,author of the file, these are in quotes
			quote_regex = re.compile("\"(.*)\"")
			tune_info = quote_regex.findall(file_text)
			self.tune_title = tune_info[0]
			self.tune_type = tune_info[1]
			self.tune_author = tune_info[2]
			#try to determine the time signature
			result = self.sig_regex.search(file_text)
			if result:
				self.tune_time_sig = result.group(1)+"/"+result.group(2)
			else:
				self.tune_time_sig = "4/4"

			#get the tunes note info
			'''greedy, multiline, from first ampersand to !'''
			notes_regex = re.compile("&.*!I",re.S)
			result = notes_regex.search(file_text)
			try:
				tune_notes = result.group()
			except:
				#no notes were found, what kind of file is this
				self.quit("No notes were found.\nIs this a valid input file?")
			#replace all whitespace characters with spaces
			tune_notes = tune_notes.replace("\r"," ")
			tune_notes = tune_notes.replace("\n"," ")
			tune_notes = tune_notes.replace("\t"," ")

			#split the string into it's constituents elements
			elements = tune_notes.split()
			for element in elements:
				self.transpose(element)

	def lilynote(self,bwwname):
			#convert a bww notename to a lilypond notename
			#make the notename lowercase
			notename = bwwname.lower()

			if notename =="lg":
				lilynote = "G"
			elif notename == "la":
				lilynote ="a"
			elif notename == "hg":
				lilynote = "g"
			elif notename == "ha" or notename =="t":
				lilynote = "A"
			else:
				lilynote = notename
			return lilynote

	def transpose(self,element):
			#receive a bww element and return a lilypond equivelent

			#is the element a note?
			note_result = self.regex_note_info.search(element)
			if note_result:
				note = self.lilynote( note_result.group("note") )+note_result.group("time")
				#is a tie slur pending?
				if self.slur_tie_pending:
					self.slur_tie_pending=False
					note+="~"
				self.tune_elements.append(note)
				self.most_recent_note = len(self.tune_elements)-1
				if note_result.group("dir") == "r" and not self.in_note_group:
					self.in_note_group=True
					self.tune_elements.append("[")
				elif note_result.group("dir") == "l":
					if self.in_note_group:
							self.in_note_group=False
							self.tune_elements.append("]")
							self.last_group_close = len(self.tune_elements)-1
					else:
							#delete the last group close
							del(self.tune_elements[self.last_group_close])
							#decrement the most recent note
							self.most_recent_note-=1
							self.tune_elements.append("]")
				return
			#is the element a grace note?
			grace_result=self.regex_grace_note.search(element)
			if grace_result:
				grace = "\\gr"+self.lilynote( grace_result.group(1) )
				self.tune_elements.append(grace)
				return
			#is the element a doubling?
			doubling_result=self.regex_doubling.search(element)
			if doubling_result:
				doubling = "\\dbl"+self.lilynote( doubling_result.group(1) )
				self.tune_elements.append(doubling)
				return
			#is the element a half doubling?
			hdoubling_result=self.regex_half_doubling.search(element)
			if hdoubling_result:
				half_doubling = "\\hdbl"+self.lilynote( hdoubling_result.group(1) )
				self.tune_elements.append(half_doubling)
				return
			#is the element a strike?
			strike_result=self.regex_strike.search(element)
			if strike_result:
				strike = "\\slur"+self.lilynote( strike_result.group(1) )
				#if the strike is on low g \\slurG
				if strike =="\\slurG":
					#let the strike be a low g grace note
					strike = "\\grG"
				#if the strike is on high G
				elif strike =="\\slurg":
					#let the strike be a grace note on the high g
					strike = "\\grg"
				#if hte strike is on low a
				elif strike == "\\slura":
					#let the strike be a grace not on low a
					strike = "\\gra"
				self.tune_elements.append(strike)
				return
			#is the element a dot?
			dot_result=self.regex_dot.search(element)
			if dot_result:
				#add a dot to the last note
				note = self.tune_elements[self.most_recent_note]
				if note[-1]=="~":
					self.tune_elements[self.most_recent_note].replace("~",".~")
				else:
					self.tune_elements[self.most_recent_note]+="."
				return

			#is the element a slur?
			slur_result = self.regex_slur.search(element)
			if slur_result:
				#get the matching elements
				note_count = slur_result.group("note_count")
				end_note = slur_result.group("end_note")
				#get the length of the slur as an integer
				slur_len = int(note_count)
				'''find the position of the note that is slur_len from the end'''
				#get the tune_elements lenght
				elem_index = len(self.tune_elements)-1
				note_count = 0
				while note_count<2:
					element = self.tune_elements[elem_index]
					#is this element a note?
					is_note = self.regex_lilynote.search(element)
					if is_note:
							#increment the note count
							note_count+=1
					#decrease the element index
					elem_index-=1

				#add the slur start just after the start note
				self.tune_elements.insert(elem_index+1,"(")
				#add the slur end
				self.tune_elements.append(")")
				return
			#is this a bww tie slur?
			if element == "^ts":
				self.slur_tie_pending = True
				return
			tie_result = self.regex_tie.search(element)	
			if tie_result:
				#get first note
				self.do_print('Tie found')
			#is the element the start of a sub_repeat?
			sub_repeat_result = self.regex_sub_repeat.search(element)
			if sub_repeat_result:
				sub_repeat = "\\set Score.repeatCommands = #'((volta \"%s\")) " % ( sub_repeat_result.group(1) )
				self.tune_elements.append(sub_repeat)
				return
			else:
				#is the element in the ignore list?
				if element in self.ignore_elements:
					return

				#if the element is a start double,
				#check if the previous element was a end double
				if len(self.tune_elements):
					last_element = self.tune_elements[-1]
					if element=="I!''" and last_element.find(":|"):
							#replace the last element with a double double
							self.tune_elements[-1] = "\\bar \":|:\" \\break\n\n"
							return
				#is this a time sig?
				result = self.sig_regex.search(element)
				if result:
					return
				try:

					dict_result = self.transpose_dict[element]
					if dict_result:
							self.tune_elements.append(dict_result)
							return
				except:
					do_print( "unparsed: "+element)
			return

	#handle writing the output
	def create_output_file(self):
			#determine the output file
			output_file = os.path.join(self.file_dir,self.name+".ly")
			#open the file for writing
			file_handle = open(output_file,"w")
			#write the data to the file
			text = self.get_lilypond_text()
			file_handle.write(text)
			#close the handle
			file_handle.close()
			#return the string of the path to the file
			return output_file

	def get_lilypond_text(self):
			tune_text = " ".join(self.tune_elements)
			lptext ='''\\include "bagpipe.ly"
melody = {
		\\set Staff.midiInstrument = #"bagpipe"
		\\hideKeySignature
		\\cadenzaOn
		\\once \\override Score.BreakAlignment #'break-align-orders =
			#(make-vector 3 '(instrument-name
									left-edge
									ambitus
									span-bar
									breathing-sign
									clef
									key-signature
									time-signature
									staff-bar
									custos
									span-bar))
		\\time %s
		%s
			}

\\score {
	\\melody
	\\layout {
	indent = 0.0\\cm
	\\context { \\Score \\remove "Bar_number_engraver" }
	}
	\\header {
	title = "%s"
	meter = "%s"
	arranger = "%s"
	}
	%s
}

''' % (self.tune_time_sig,
			tune_text,
			self.tune_title,
			self.tune_type,
			self.tune_author,
			self.lily_midi
			)
			return lptext

#use the bww2lily class
if __name__ == "__main__" :
	parser = OptionParser()
	parser.add_option("-i", "--in", dest="input",
			help="the FILE to convert", metavar="FILE")
	parser.add_option("-l", "--lilypond",
			action="store_true", dest="runlilypond",default=False,
			help="run lilypond after converting the file")
	parser.add_option("-m", "--midi",
			action="store_true", dest="addmidi",default=False,
			help="add midi output to the lilypond file")
	parser.add_option("-v","--version",dest='version',default=False,
			action="store_true",help="print version information and quit")

	#parse the args
	(options, args) = parser.parse_args()
	if options.version:
			do_print( "bwwtolily: "+version)
			sys.exit()

	if options.input!=None:
			b2l = bwwtolily(options.addmidi)
			b2l.set_file(options.input)
			b2l.parse()
			new_file = b2l.create_output_file()
			#are we running lilypond?
			if options.runlilypond:
				#try to run lilypond as a subprocess
				subprocess.check_call("lilypond \""+new_file+"\"",shell=True)
	else:
		parser.print_help()
sys.exit()
