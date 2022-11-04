# Pattern: Dynamic Include

## Category

Include

## Definition

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$a = $_GET["p1"];
$file = "a.php";
include($file);

// file a.php
<?php
echo $a;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | YES       | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=9, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/first_ex/first_ex.php:1-4
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($file) string("a.php")
L6 (4):     EXT_STMT
L7 (4):     INCLUDE_OR_EVAL (include) CV1($file)
L8 (4):     RETURN int(1)

$_main: ; (lines=3, args=0, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/first_ex/a.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO CV0($a)
L2 (2):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```
```

### Instance 2

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
    $b = $_GET["p2"];
    if($b){
        $file = "a.php";
    }else{
        $file = "b.php"; 
    }
    include($file);

// file a.php
<?php
    echo $a;

// file b.php
<?php
echo 'safe';
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO       | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=3, args=0, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/second_ex/a.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO CV0($a)
L2 (2):     RETURN int(1)

$_main: ; (lines=3, args=0, vars=0, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/second_ex/b.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO string("safe")
L2 (2):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```
```

### Instance 3

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
// File a.php
<?php
 
$a = $_GET["p1"];
$b = $_GET["p2"];
 
include $b;
?>
 
// {$b} file
<?php
 
echo $a;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=11, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/third_ex/third_ex.php:1-6
L0 (3):     EXT_STMT
L1 (3):     T2 = FETCH_R (global) string("_GET")
L2 (3):     T3 = FETCH_DIM_R T2 string("p1")
L3 (3):     ASSIGN CV0($a) T3
L4 (4):     EXT_STMT
L5 (4):     T5 = FETCH_R (global) string("_GET")
L6 (4):     T6 = FETCH_DIM_R T5 string("p2")
L7 (4):     ASSIGN CV1($b) T6
L8 (6):     EXT_STMT
L9 (6):     INCLUDE_OR_EVAL (include) CV1($b)
L10 (6):    RETURN int(1)

$_main: ; (lines=3, args=0, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/third_ex/abc.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO CV0($a)
L2 (2):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INCLUDE_OR_EVAL.*").map{x => (x.argument.order(0).code("include"),x.argument.order(1).code("CV*|T*|V*"))}.size
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

### Instance 4

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
// the main file
<?php
$a = $_Get["p1"];
$b = $_Get["p2"]; // $b is 1.php
include("file" . $b);

// file1.php
<?php
echo $a;
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=10, args=0, vars=3, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/fourth_ex/fourth_ex.php:1-4
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_DIM_R CV1($_Get) string("p1")
L2 (2):     ASSIGN CV0($a) T3
L3 (3):     EXT_STMT
L4 (3):     T5 = FETCH_DIM_R CV1($_Get) string("p2")
L5 (3):     ASSIGN CV2($b) T5
L6 (4):     EXT_STMT
L7 (4):     T7 = CONCAT string("file") CV2($b)
L8 (4):     INCLUDE_OR_EVAL (include) T7
L9 (4):     RETURN int(1)

$_main: ; (lines=3, args=0, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/fourth_ex/file1.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO CV0($a)
L2 (2):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

### Instance 5

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$a = $_GET["p1"];
include("a.php");

// file a.php
<?php
echo $a;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   |  YES       | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=7, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/fifth_ex/fifth_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T1 = FETCH_R (global) string("_GET")
L2 (2):     T2 = FETCH_DIM_R T1 string("p1")
L3 (2):     ASSIGN CV0($a) T2
L4 (3):     EXT_STMT
L5 (3):     INCLUDE_OR_EVAL (include) string("a.php")
L6 (3):     RETURN int(1)

$_main: ; (lines=3, args=0, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/fifth_ex/a.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO CV0($a)
L2 (2):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call.code(".*INCLUDE_OR_EVAL.*.string.*").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

