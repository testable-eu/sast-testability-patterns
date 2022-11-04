#!/usr/bin/env python3

import subprocess
import sys
from pathlib import Path

def check_string(st):
	first_part = ""
	if len(st)>0 and ((st[0] == "'" and st[len(st)-1] == "'") or (st[0] == '"' and st[len(st)-1]=='"')):
		temp = st[1:]
		temp = temp[:-1]
		if '"' not in temp and "'" not in temp and '$' not in temp:
			first_part = temp
	return first_part

if __name__ == "__main__":
	project_folder = Path(sys.argv[1])

	#print("+++ Apply the transformation on the projects")
	dict_projects = {}
	dict_process = {}

	# Do the changes

	#Search for the projects which has call_user_func
	#print("+++ Search for call_user_func")
	cmd = "grep -Hn -r 'call_user_func' " + str(project_folder)
	try:
		result = subprocess.check_output(cmd, shell=True)
		data = result.decode('utf-8-sig')

		counter = 0

		resc = {}
		dict_call_user_func = {}
		dict_line = {}
		lines = {}
		for line_change in data.split('\n')[:-1]:

			if ".php:" not in line_change or ".txt" in line_change:
				continue
			path_project = line_change.split(".php:")[0]
			line = line_change.split(":")[1]
			prj = line_change.split("/")[2]
			sub_prj = line_change.split("/")[3]
			if path_project in lines:
				continue
			lines[path_project] = 1
			if (prj, sub_prj) not in dict_projects:
				dict_projects[(prj, sub_prj)] = 1

			if line_change in dict_line:
				continue

			fcode = line_change.split(".php:")[0]+".php"
			with open(fcode, 'r', encoding='utf8') as filecode:
				try:
					datacode = filecode.read()
				except:
					continue
			#fout = open(fcode, "w", encoding='utf8')
			dict_line[line_change] = 1
			calls = datacode.split("call_user_func")

			cnd = True
			for call in calls:
				if cnd == True:
					cnd = False
				else:
					call = "call_user_func" + call
					call_original = call
					x = 0
					bc = 0
					ba = 0
					bm = 0
					for c in call:
						x = x + 1
						if c=='(':
							bc = bc + 1
						if c == ')':
							bc = bc - 1
							if bc == 0:
								break
						if c=='[':
							ba = ba + 1
						if c == ']':
							ba = ba - 1
						if c=='{':
							bm = bm + 1
						if c == '}':
							bm = bm - 1
						if c == ',' and bm == 0 and ba == 0 and bc == 1:
							break
					x = x - 1
					st = call[:x]
					cr = 0
					if "call_user_func_array" in st:
						cr = 1
					st = st.replace(" ", "")
					st = st.replace("call_user_func_array(", "")
					st = st.replace("call_user_func(", "")
					first_part = check_string(st)
					if first_part == "" and st[:6] == "array(":
						temp = st[6:].split(",", 1)
						obj = check_string(temp[0])
						if obj == "":
							obj = temp[0]
						method = check_string(temp[1].split(')')[0])
						if method != "":
							first_part = obj + "->" + method
					if first_part != "":
						dict_process[(prj, sub_prj)] = 1
						dict_call_user_func[(prj, sub_prj)] = 1
						call = call[x:]
						if cr == 1:
							x = 0
							for c in call:
								if c == ')':
									break
								if c!=',' and c!=' ' and c!='\n':
									break
								x = x + 1
							if x!=0:
								call = call[:x] + "..." + call[x:]
						if call[0] == ',':
							call = call[1:]
						print(path_project + '%' + line)
	except:
		print('')
