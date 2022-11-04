# Pattern: Function Variable

## Category

Functions

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
function F($st){
    echo $st;
}
$b = $_GET["p1"];
$func = "F";
// it will call the function F
// it will print $b, XSS
$func($b);  
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```php
$_main: ; (lines=11, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/7_function_variable/first_ex/first_ex.php:1-10
L0 (5):     EXT_STMT
L1 (5):     T2 = FETCH_R (global) string("_GET")
L2 (5):     T3 = FETCH_DIM_R T2 string("p1")
L3 (5):     ASSIGN CV0($b) T3
L4 (6):     EXT_STMT
L5 (6):     ASSIGN CV1($func) string("F")
L6 (9):     EXT_STMT
L7 (9):     INIT_DYNAMIC_CALL 1 CV1($func)
L8 (9):     SEND_VAR_EX CV0($b) 1
L9 (9):     DO_FCALL
L10 (10):   RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/7_function_variable/first_ex/first_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($st) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($st)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
```

- DISCOVERY:

```bash
cpg.call("INIT_DYNAMIC_CALL").code(".*false.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

### Instance 2

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($st){
    echo $st;
}
$b = $_GET["p1"];
$func = $_GET["p2"];
// it will call the function F
// it will print $b, XSS
$func($b);  
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |

Measurements Date: 8 June 2021

- OPCODE:

```php
$_main: ; (lines=13, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/7_function_variable/second/second_ex.php:1-9
L0 (5):     EXT_STMT
L1 (5):     T2 = FETCH_R (global) string("_GET")
L2 (5):     T3 = FETCH_DIM_R T2 string("p1")
L3 (5):     ASSIGN CV0($b) T3
L4 (6):     EXT_STMT
L5 (6):     T5 = FETCH_R (global) string("_GET")
L6 (6):     T6 = FETCH_DIM_R T5 string("p2")
L7 (6):     ASSIGN CV1($func) T6
L8 (9):     EXT_STMT
L9 (9):     INIT_DYNAMIC_CALL 1 CV1($func)
L10 (9):    SEND_VAR_EX CV0($b) 1
L11 (9):    DO_FCALL
L12 (9):    RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/7_function_variable/second/second_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($st) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($st)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
```

- DISCOVERY:

```bash
cpg.call("INIT_DYNAMIC_CALL").code(".*false.*").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 