#!/usr/bin/env python3

import io, os, sys

# Rewrite relative includes ('./', '../') and copy the files into one big file.
# This file is then compilable even after it has been moved around.


def rewrite_local_lilypond_includes( out_file, fname, recursive = True ):
	with io.open(fname, 'r', encoding='utf8') as in_file:
		for i, line in enumerate(in_file.readlines()):
			if line.startswith(u'\ufeff'): continue

			if '\\include' in line:
				# Rewrite includes to absolute location of file
				incline = line.replace('\\include', '').strip('"\'\n ')

				# Only copy if it starts with a "./"
				if incline.startswith('./') or incline.startswith('../'):
					# Make it an absolute location first
					inc_fname = os.path.join(os.path.abspath(os.path.dirname(fname)), incline)

					try:
						with io.open( inc_fname, 'r', encoding='utf8') as inc_file:
							out_file.write("% Including Relative File: " + incline + "\n")

							if recursive:
								rewrite_local_lilypond_includes( out_file, inc_fname, False )
							else:
								for subline in inc_file.readlines():
									out_file.write( subline )

							out_file.write("% End of Relative File: " + incline + "\n")

						# We are done here
						continue

					except IOError:
						print("{}:{} Error opening File: '{}'".format(fname, i, incline), file=sys.stderr)


			out_file.write(line)



if __name__ == "__main__":
	from argparse import ArgumentParser
	import os

	parser = ArgumentParser()
	parser.add_argument("files", default='', nargs='+')

	command_group = parser.add_mutually_exclusive_group()
	command_group.add_argument("-c", "--command", metavar="COMMAND",
		dest="runcommand", default=None,
		help="Run COMMAND on the generated file")
	command_group.add_argument("-l", "--lilypond",
		action="store_true", dest="uselilypond", default=False,
		help="Run Lilypond on the generated file")


	parser.add_argument("-o", "--options", nargs='?',
		action="append", dest="options", default=[],
		help="Options to pass to lilypond")
	parser.add_argument("-k", "--keep",
		action="store_false", dest="delete_tempfile", default=True,
		help="Keep Temporary File after running COMMAND on it")

	args = parser.parse_args()
	
	if args.uselilypond:
		args.runcommand = 'lilypond'

	if args.runcommand:
		import subprocess
		import tempfile

	else:
		import sys
		out_file = sys.stdout

	for f in args.files:
		if args.runcommand:
			
			out_file = tempfile.NamedTemporaryFile( mode='w+', suffix='.ly', delete=args.delete_tempfile, prefix=os.path.basename(f).rsplit('.', 1)[0], dir=os.path.abspath(os.path.dirname(f)) )

		out_file.write('\ufeff')
		out_file.write("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n")
		out_file.write("% This file was preprocessed by a script '" + os.path.basename(__file__) + "'\n")
		out_file.write("% that copies all '\\include \"./\"'d files into one file\n")
		out_file.write("% such that it can be moved around and still be compiled\n")
		out_file.write("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n")
		out_file.write("% Original file: " + f + "\n")
		out_file.write("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n\n")

		rewrite_local_lilypond_includes( out_file, f )

		out_file.flush()

		if args.runcommand:
			print( args.runcommand + " " + " ".join(args.options) + " " + out_file.name )
			subprocess.call( args.runcommand + " " + " ".join(args.options) + " " + out_file.name, shell=True )
