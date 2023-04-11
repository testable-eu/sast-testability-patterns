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


def write_result_to_readme(result_str):
	path_to_readme = os.path.join(BASE_DIR, "README.md")
	with open(path_to_readme, "r") as readme:
		readme_lines = [line.strip() for line in readme.readlines()]
	result_list = result_str.split("\n")
	start_index = readme_lines.index(result_list[0])
	end_index = -1
	for line in readme_lines[start_index:]:
		if line.startswith("#"):
			end_index = readme_lines.index(line)
			break
	assert end_index > 0, "Could not find heading after first `<details markdown='1'>`"

	new_readme = readme_lines[:start_index]
	new_readme += result_list
	new_readme += readme_lines[end_index:]

	with open("README.md", "w") as new_readme_file:
		for line in new_readme:
			new_readme_file.write(f"{line}\n")	
	print(end_index)
	#print(readme_lines)


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

	final_str = ""
	for language in all_patterns:
		# Markdown for collapsible list and table headers
		final_str += '<details markdown="1">\n'
		final_str += f"<summary><b>{language_lookup[language]}</b></summary>\n\n"
		final_str += "|ID|Pattern Name|Version|Link|\n"
		final_str += "|:--|:--|:--|:--|\n"

		for pattern in get_sorted_patterns(all_patterns[language]):
			# Get details for each pattern
			pattern_id = pattern.split("_")[0]
			pattern_name = pattern[pattern.index(pattern_id) + len(pattern_id) + 1:]
			pattern_link_preview = f"{language}/{pattern}"
			pattern_link = f"{BASE_LINK_MASTER}/{pattern_link_preview}"
			pattern_version = get_pattern_version(os.path.join(BASE_DIR, language, pattern))
			final_str += f"|{pattern_id}|{pattern_name}|{pattern_version}|[{pattern_link_preview}]({pattern_link})|\n"
		# Finish one collapsable list
		final_str += "\n</details>\n\n"

	with open("./patterns_status.out", 'w') as fd:
		fd.write(final_str)

	print("Do you want the result directly written to the README.md")
	print("\033[93mWarning, this will replace all lines between the first `<details markdown='1'>` to the next heading starting with '#'\033[0m")
	if input("Type 'y' to write result to README.md ") == "y":
		write_result_to_readme(final_str)


if __name__ == "__main__":
	main()