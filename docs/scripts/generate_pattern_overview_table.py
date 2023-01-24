# -*- coding: utf-8 -*-

"""
	Copyright (C) 2023  Soheil Khodayari, CISPA
	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU Affero General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU Affero General Public License for more details.
	You should have received a copy of the GNU Affero General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.
	

	Description:
	------------
	Creates a markdown table containing the total number of patterns and their instances
	
	Run:
	------------
	$ python3 -m docs.scripts.generate_pattern_overview_table
"""

import os


def get_count_patterns(patterns_directory):

	count_patterns = 0
	count_instances = 0

	patterns = os.listdir(patterns_directory)
	for pattern_name in patterns: 
		pattern_folder = os.path.join(patterns_directory, pattern_name) 
		if os.path.exists(pattern_folder) and not os.path.isfile(pattern_folder):
			count_patterns += 1
			pattern_instances = os.listdir(pattern_folder)
			for instance_name in pattern_instances:
				instance_folder = os.path.join(pattern_folder, instance_name)
				if os.path.exists(instance_folder) and not os.path.isfile(instance_folder):
					count_instances += 1

	return {
		"patterns": count_patterns,
		"instances": count_instances
	}




def main():

	template="""
| Language   	| # Patterns 	| # Instances 	| Link                                                                               	|
|------------	|------------	|-------------	|------------------------------------------------------------------------------------	|
| JavaScript 	| {0}        	| {1}         	| [JS](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS)  	|
| PhP        	| {2}         	| {3}         	| [PHP](https://github.com/testable-eu/sast-testability-patterns/tree/master/PHP) 	|
| Java       	| {4}        	| {5}         	| [JAVA](https://github.com/testable-eu/sast-testability-patterns/tree/master/JAVA)  	|
"""

	BASE_DIR= os.path.dirname(os.path.dirname(os.path.dirname(os.path.realpath(__file__))))

	JAVA_PATTERNS_DIR = os.path.join(BASE_DIR, "JAVA")
	PHP_PATTERNS_DIR = os.path.join(BASE_DIR, "PHP")
	JS_PATTERNS_DIR = os.path.join(BASE_DIR, "JS")
	
	count_patterns_java = get_count_patterns(JAVA_PATTERNS_DIR)
	count_patterns_php = get_count_patterns(PHP_PATTERNS_DIR)
	count_patterns_js = get_count_patterns(JS_PATTERNS_DIR)

	table = template.format(
		count_patterns_js["patterns"],
		count_patterns_js["instances"],
		count_patterns_php["patterns"],
		count_patterns_php["instances"],
		count_patterns_java["patterns"],
		count_patterns_java["instances"]
	)
	print(table)


if __name__ == "__main__":
	main()
