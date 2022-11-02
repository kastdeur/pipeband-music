#!/usr/bin/env python3
# vim: fdm=marker noet ts=4

# Generate a JSON array of all the pipeband scores
#+ see bottom for script execution

#{{{ Functions
import os
import re

def walk_through_files(path, file_extension='.ly', exclude_dirs=[]):
	for (dirpath, dirnames, filenames) in os.walk(path):
		if os.path.basename(dirpath) in exclude_dirs:
			continue

		if '.ignore_scores2json' in filenames:
			dirnames = []
			continue

		if file_extension:
			for filename in filenames:
				if filename.endswith(file_extension):
					yield os.path.join(dirpath, filename)
		else:
			yield os.path.join(dirpath, filename)

def rreplace(s, old, new, occurrence):
	li = s.rsplit(old, occurence)
	return new.join(li)


def search_file_for_tuneinfo(fname, textsearches = [], keywords = []):
	data = {}
	with open(fname, 'r') as fh:
		for line in fh:
			if line.startswith('\\version'):
				continue

			if line.startswith('%'):
				continue

			for t in textsearches:
				if not t in data:
					result = re.search(t +'\s*=\s*(?P<quote>[\'\"])(.*?)(?P=quote)', line)
					if result:
						data[t] = result.group(2)

			for keyword in keywords:
				if not keyword in data:
					result = re.search(keyword+'\s*(.*)', line)

					if result:
						data[keyword.replace('\\','')] = result.group(1).strip().replace('\\', '')
	return data

def read_config(config_path):
	''' return a dict created from the configfile '''
	tuneinfo = search_file_for_tuneinfo(
			config_path,
			textsearches = ['title', 'meter', 'instrument'],
			keywords = ['\\\\tempo', '\\\\time', '\\\\partial', '\\\\key'],
			)

	if 'partial' in tuneinfo:
		tuneinfo['partial'] = tuneinfo['partial'].split(' ')[0]
	if 'time' in tuneinfo:
		tuneinfo['time'] = tuneinfo['time'].split(' ')[0]

	return tuneinfo

def read_lilypond(fname):
	''' return a dict from file'''
	data = read_config(fname)

	return data

def analyse_tune_ly(tune_file):
	''' return a dict created from the tune file'''
	data = read_lilypond(tune_file)

	if 'instrument' not in data:
		data['instrument'] = os.path.splitext(os.path.basename(tune_file))[0]
	elif data['instrument']:
		candidate = os.path.splitext(os.path.basename(tune_file))[0]
		if data['instrument'].lower() in candidate.lower():
			low_candidate = candidate.lower().split(sep=data['instrument'].lower(), maxsplit=1)
			if len(low_candidate) > 1:
				data['instrument'] += candidate[len(low_candidate[0]) + len(data['instrument']):]

	data['instrument'] = data['instrument'].lower()

	data['path'] = tune_file

	return data


def merge_data_and_config(data={}, config={}):
	"""
	Merge two dictionaries.
	data is from the file itself, config is from the configfile

	replaces data['title'] = 'My \\title' with 'My '+config['title']
	"""

	for k in config.keys():
		if k in data and '\\'+k in data[k]:
			data[k].replace('\\'+k, config[k])

	# overwrite config values with data
	newdata = { **config, **data }

	return newdata

def config_from_lypath(lypath, default_name='config.ily'):
	''' return the configpath belonging to the lypath '''
	li = lypath.rsplit("/", 1)[0]

	if False:
		# determine config path from file
		pass
	else:
		configpath = os.path.join(li, default_name)
	return configpath

def read_path(music_paths, exclude_dirs=[]):
	"""
	Return a dictionary of tunes with tune info from music_paths
	"""
	tunes = {}

	# Music Directory to work on
	if isinstance(music_paths, str):
		music_paths = [music_paths]

	for path in music_paths:
		for f in walk_through_files(path, '.ly', exclude_dirs=exclude_dirs):

			data = analyse_tune_ly(f)
			config_path = config_from_lypath(f)

			if os.path.exists(config_path):
				config = read_config(config_path)
				# merge them
				data = merge_data_and_config(data, config)

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

	print(json.dumps(read_path( args.music_paths, exclude_dirs=['template'] ), indent=0))
