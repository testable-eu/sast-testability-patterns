# -*- coding: utf-8 -*-

"""
	Copyright (C) 2023  Soheil Khodayari, CISPA
	This program is free software: you can redistribute it and/or modify
	it under the terms of Apache License Version 2.0 
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
	Apache License for more details.


	Description:
	------------
	Gets the list of testability patterns


	Location: 
	------------
	/testability_patterns/docs/scripts/get_patterns_list.py


	Running:
	------------
	$ cd testability_patterns
	$ python3 -m docs.scripts.get_patterns_list

"""

import json
import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def get_sorted_patterns(patterns):
	return sorted(patterns, key=lambda pattern_name: int(pattern_name.split('_')[0]))


def get_pattern_version(path_to_pattern):
	path_to_pattern_json = os.path.join(path_to_pattern, f"{os.path.basename(path_to_pattern)}.json")
	with open(path_to_pattern_json, "r") as json_file:
		result = json.load(json_file)
	return result["version"]


def main():
	
	BASE_LINK_MASTER = "https://github.com/testable-eu/sast-testability-patterns/tree/master"

	JS_PATTERNS_DIR = os.path.join(BASE_DIR, "JS")
	JAVA_PATTERNS_DIR = os.path.join(BASE_DIR, "JAVA")
	PHP_PATTERNS_DIR = os.path.join(BASE_DIR, "PHP")

	js_patterns = os.listdir(JS_PATTERNS_DIR)
	js_patterns = [item for item in js_patterns if os.path.isdir(os.path.join(JS_PATTERNS_DIR, item))]
	
	java_patterns = os.listdir(JAVA_PATTERNS_DIR)
	java_patterns = [item for item in java_patterns if os.path.isdir(os.path.join(JAVA_PATTERNS_DIR, item))]
	
	php_patterns = os.listdir(PHP_PATTERNS_DIR)
	php_patterns = [item for item in php_patterns if os.path.isdir(os.path.join(PHP_PATTERNS_DIR, item))]

	all_patterns = {
		"JS": js_patterns,
		"JAVA": java_patterns,
		"PHP": php_patterns
	}
	language_lookup = {
		"JS": "JavaScript",
		"JAVA": "Java",
		"PHP": "PHP"
	}

	with open("./patterns_status.out", 'w') as fd:
		for language in all_patterns:
			# Markdown for collapsible list and table headers
			fd.write('<details markdown="1">\n')
			fd.write(f"<summary><b>{language_lookup[language]}</b></summary>\n\n")
			fd.write("|ID|Pattern Name|Version|Link|\n")
			fd.write("|:--|:--|:--|:--|\n")

			for pattern in get_sorted_patterns(all_patterns[language]):
				# Get details for each pattern
				pattern_id = pattern.split("_")[0]
				pattern_name = pattern[pattern.index(pattern_id) + len(pattern_id) + 1:]
				pattern_link_preview = f"{language}/{pattern}"
				pattern_link = f"{BASE_LINK_MASTER}/{pattern_link_preview}"
				pattern_version = get_pattern_version(os.path.join(BASE_DIR, language, pattern))
				fd.write(f"|{pattern_id}|{pattern_name}|{pattern_version}|[{pattern_link_preview}]({pattern_link})|\n")
			# Finish one collapsable list
			fd.write("\n</details>\n\n")


if __name__ == "__main__":
	main()