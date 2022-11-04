#!/usr/bin/env python3
import shutil
import subprocess
import sys
import os
from pathlib import Path

def run_scala_query(project_folder):
    ROOT_DIR = os.path.abspath('/tp-framework')
    my_dir = Path(ROOT_DIR) / Path('testability_patterns/PHP/48_construct_with_inheritance')
    cpg_php = os.path.abspath(Path(ROOT_DIR) / Path('joern/querydb-php'))
    scala_query = my_dir / Path('./1_instance_48_construct_with_inheritance.sc')

    # 1) Generate binary for each file of the project
    # 2) Scala query launch
    binary_folder = os.path.abspath(project_folder / Path('binary_for_cpg_inh'))
    if not os.path.exists(binary_folder):
        os.mkdir(binary_folder)
    # NOTE: to properly run, we need to be in the joern directory
    os.chdir(cpg_php)
    binary_file = binary_folder / Path("binary.bin")
    cmd1 = 'bash php2cpg ' + str(project_folder) + " --interactive false -o " + str(binary_file)
    os.system(cmd1)
    cmd2 = 'bash joern --script ' + str(scala_query) + " --params name=" + str(binary_file)
    result = subprocess.check_output(cmd2, shell=True)
    # result retrieved and parsed to have all the information to create a Discovery object
    results = result.decode('utf-8-sig')
    os.chdir(my_dir)
    shutil.rmtree(binary_folder)
    return results

if __name__ == "__main__":
    project_folder = Path(sys.argv[1])
    cmd = "grep -Hn -r 'class.*extends' " + str(project_folder)
    try:
        result = subprocess.check_output(cmd, shell=True)
        results = result.decode('utf-8-sig')
        co = 0
        data = results
        methods_list = run_scala_query(project_folder) #obtained from scala query
        methods_list = methods_list[5:][:-2]
        methods = methods_list.replace("), (", ")AAAAA(").split("AAAAA")
        res = 0
        resin = 0
        for line in data.split("\n"):
            if line == "" or ".php:" not in line:
                continue
            dir = line.split(".php:")[0] + ".php"
            line = line.split(".php:")[1].lower()
            if "class" not in line:
                continue
            parent = line.replace("{", " ").split("extends")[1]
            ls = parent.split(" ")
            cls = line.split("class")[1].split("extends")[0].replace(" ", "")
            par = ""
            for l in ls:
                if l != "":
                    par = l
                    break
            # print("Class: "+cls+" Parent: "+par)
            ls_cls = []  # list of classes
            ls_par = []  # list of parents
            for m in methods:
                m = m[1:][:-1]
                if m == "":
                    continue
                cs = m.split(",")
                if par in cs[1]:
                    ls_par.append(cs[0])
                if cls in cs[1]:
                    ls_cls.append(cs[0])
            for f in ls_par:
                if "__construct" in f:
                    print(dir + '%' + line.split(":")[0])
                    break
    except:
        print('')
