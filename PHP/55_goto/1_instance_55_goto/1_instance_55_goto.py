#!/usr/bin/env python3

import subprocess
import sys
from pathlib import Path

if __name__ == "__main__":
    project_folder = Path(sys.argv[1])
    cmd = "grep -Hn -r 'goto' " + str(project_folder)
    try:
        result = subprocess.check_output(cmd, shell=True)
        results = result.decode('utf-8-sig')
        results = results.split('\n')
        for r in results[:-1]:
            values = r.split(':')
            line = values[1]
            file = values[0]
            if '.php' in file:
                print(file + '%' + line)
    except:
        #no line found
        print('')
