#!/usr/bin/env python3
# vim: fdm=marker noet ts=4

# Generate a JSON array of all the pipeband scores
#+ see bottom for script execution

#{{{ Functions
import os

def walk_through_files(path, file_extension='.ly'):
	for (dirpath, dirnames, filenames) in os.walk(path):
		if file_extension:
			for filename in filenames:
				if filename.endswith(file_extension):
					yield os.path.join(dirpath, filename)
		else:
			yield os.path.join(dirpath, filename)

def rreplace(s, old, new, occurrence):
	li = s.rsplit(old, occurence)
	return new.join(li)


def read_config(config_path):
	''' return a dict created from the configfile '''
	import re
	config = {}

	textsearches = ['title', 'meter']
	with open(config_path, 'r') as fh:
		for line in fh:
			if line.startswith('\\version'):
				continue

			if line.startswith('%'):
				continue

			for t in textsearches:
				if not t in config:
					result = re.search(t +' = (?P<quote>[\'\"])(.*?)(?P=quote)', line)
					if result:
						config[t] = result.group(2)

			for keyword in ['\\\\tempo', '\\\\time', '\\\\partial']:
				if not keyword in config:
					result = re.search(keyword+'\s*(.*)', line)

					if result:
						config[keyword.replace('\\','')] = result.group(1).strip()
	return config	

def analyse_tune_ly(tune_file):
	''' return a dict created from the tune file'''
	data = read_lilypond(tune_file)

	data['path'] = tune_file

	return data

def read_lilypond(fname):
	''' return a dict from file'''
	data = {}

	if not os.path.exists(fname):
	    return data

	return data

def merge_data_and_config(data, config):
	if 'title' in data and '\\title' in data['title'] and 'title' in config:
		data['title'].replace('\\title',config['title'])

	newdata = { **config, **data }

	return newdata

def config_from_lypath(lypath):
	''' return the configpath belonging to the lypath '''
	li = lypath.rsplit("/", 1)[0]
	return os.path.join(li,"config.ily")

def read_path(music_paths):
	tunes = {}

	# Music Directory to work on
	if isinstance(music_paths, str):
		music_paths = [music_paths]

	for path in music_paths:
		for f in walk_through_files(path, '.ly'):
			if os.path.basename(os.path.dirname(f)) == 'template':
				continue;

			data = analyse_tune_ly(f)
			config_path = config_from_lypath(f)

			if os.path.exists(config_path):
				config = read_config(config_path)
				# merge them 
				data = merge_data_and_config(data, config)

			data['instrument'] = os.path.splitext(os.path.basename(f))[0]
			data['files'] = {}
			data['files']['lilypond'] = f.replace(path,'',1)
			for ext in ['pdf', 'midi', 'preview.pdf', 'preview.png']:
				sfile = os.path.splitext(f)[0] + '.' + ext

				if os.path.isfile(sfile):
					data['files'][ext] = sfile.replace(path,'',1)

			if 'title' in data:
				tune_key = data['title']
			else:
				tune_key = data['path']

			if not tune_key in tunes:
				tunes[tune_key] = [data]
			else:
				tunes[tune_key].append(data)

	return tunes
#}}} End of functions

# ================================================================
# Alright, lets see if it works...
# ================================================================
if __name__ == "__main__":
	import argparse

	import json

	parser = argparse.ArgumentParser(description="Read a music directory into a JSON file")
	parser.add_argument('music_paths', nargs="*", type=str, default=".")

	args = parser.parse_args()

	print(json.dumps(read_path( args.music_paths )))
