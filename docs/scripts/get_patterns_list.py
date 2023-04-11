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
	/testability_patterns/scripts/get_patterns_list.py


	Running:
	------------
	$ cd testability_patterns
	$ python3 -m docs.scripts.get_patterns_list

"""


import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

def get_sorted_patterns(patterns):
	return sorted(patterns, key=lambda pattern_name: int(pattern_name.split('_')[0]))

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


	patterns_all = {
		"JS": js_patterns,
		"JAVA": java_patterns,
		"PHP": php_patterns
	}
	language_lookup = {
		"JS": "JavaScript",
		"JAVA": "Java",
		"PHP": "PHP"
	}
	patterns_reviewed = {
		"JS":[
			"13_function_declared_immediately_executed",
			"39_function_get_arguments",
			"1_unset_element_array",
			"25_weak_map",
			"32_array_shift",
			"38_while_break",
			"89_proxy",
			"64_assign_object",
			"76_reference_argument",
			"5_variadic",
			"28_closures",
			"30_generator_delegation",
			"35_async_methods",
			"37_generators",
			"42_anonymous_object",
			"65_proto",
			"67_symbol_to_string_tag",
			"71_named_class",
			"84_try_catch",
			"77_object_clone",
			"54_define_property",
			"97_vulnerable_key_dictionary",
			"98_throw_exception",
			"31_generatorfunction_constructor",
			"34_bind",
			"55_inheritance",
			"56_weak_ref",
			"61_delete_properties",
			"62_static_variable",
			"70_reflect_get",
			"83_getattribute",
			"87_modules",
			"92_set_to_array",
			"15_reflect_delete",
			"105_this_statement",
			"102_event_dispatch",
			"103_event_handler_registration",
			"104_event_handler_removal",
			"105_this_statement"
		],
		"PHP": [
			"1_static_variables",
			"2_global_variables",
			"27_get_called_class",
			"31_static_method_variable",
			"33_get_overloading",
			"34_isset_overloading",
			"36_call_overloading",
			"37_callstatic_overloading",
			"60_array_walk",
			"61_array_map",
			"68_compact",
			"69_create_function",
			"70_extract",
			"71_array_functions",
			"74_dirname",
			"75_buffe"
		],
		"JAVA": [
			"1_throwable",
			"6_callable",
			"7_function_currying",
			"8_tomap_2dimarr",
			"9_beans_getvalue",
			"10_cast",
			"11_bytearrayinputstream",
			"12_chararrayreader",
			"13_runfinalization",
			"16_type_inference",
			"18_socketpermission",
			"19_stringjoiner_add",
			"21_string_valueof_override_to_string",
			"22_addition_assignment_operator",
			"25_assign_class_to_interface",
			"26_assign_object1_to_object2",
			"27_asynchronous",
			"106_list_copyof",
			"32_cloneable",
			"20_inner_class_declaration",
			"76_session",
			"17_collections_ncopies"
		]
	}

	with open("./patterns_status.out", 'w') as fd:
		for language in patterns_all:
			fd.write('<details markdown="1">\n')
			fd.write(f"<summary><b>{language_lookup[language]}</b></summary>\n\n")
			fd.write("|ID|Pattern Name|Version|Link|\n")
			fd.write("|:--|:--|:--|:--|\n")
			for pattern in get_sorted_patterns(patterns_all[language]):
				pattern_id = pattern.split("_")[0]
				pattern_name = pattern[pattern.index(pattern_id) + len(pattern_id) + 1:]
				pattern_link_preview = f"{language}/{pattern}"
				pattern_link = f"{BASE_LINK_MASTER}/{pattern_link_preview}"
				pattern_version = "v0.draft"
				if pattern in patterns_reviewed[language]:
					pattern_version = "v1.0"
				fd.write(f"|{pattern_id}|{pattern_name}|{pattern_version}|[{pattern_link_preview}]({pattern_link})|\n")
			fd.write("\n</details>\n\n")


if __name__ == "__main__":
	main()