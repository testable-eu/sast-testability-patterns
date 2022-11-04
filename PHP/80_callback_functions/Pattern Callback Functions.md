# Pattern: Callback Function

## Category
Functions

## Definition
[Callbacks](https://www.php.net/manual/en/language.types.callable.php) are defined in PHP.
>>>
Some functions like call_user_func() or usort() accept user-defined callback functions as a parameter. Calls the callback given by the first parameter and passes the remaining parameters as arguments.

Special cases:
*  call_user_func function
*  call_user_func_array function
*  usort function
*  call_user_func with reference
*  call_user_func_array with reference
*  function name as a variable (hard coded and source variable)
*  call_user_func with object

>>>
Note:
Callbacks registered with functions such as call_user_func() and call_user_func_array() will not be called if there is an uncaught exception thrown in a previous callback.

## Instances

### Instance 1

- CATEGORY: D1
- NAME: hardcoded function name
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func('F', $a);
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | NO      | YES       | YES     |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=9, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/first_ex/first_ex.php:1-7
L0 (6):     EXT_STMT
L1 (6):     T1 = FETCH_R (global) string("_GET")
L2 (6):     T2 = FETCH_DIM_R T1 string("p1")
L3 (6):     ASSIGN CV0($a) T2
L4 (7):     EXT_STMT
L5 (7):     INIT_FCALL 1 96 string("f")
L6 (7):     SEND_USER CV0($a) 1
L7 (7):     DO_FCALL
L8 (7):     RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/first_ex/first_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($var) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($var)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
```

- DISCOVERY:

```bash
SCRIPTING
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

### Instance 2

- CATEGORY: D2
- NAME: hardcoded function name
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
$func = 'F';
call_user_func($func, $a);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:
```bash
$_main: ; (lines=11, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/second_ex/second_ex.php:1-8
L0 (6):     EXT_STMT
L1 (6):     T2 = FETCH_R (global) string("_GET")
L2 (6):     T3 = FETCH_DIM_R T2 string("p1")
L3 (6):     ASSIGN CV0($a) T3
L4 (7):     EXT_STMT
L5 (7):     ASSIGN CV1($func) string("F")
L6 (8):     EXT_STMT
L7 (8):     INIT_USER_CALL 1 string("call_user_func") CV1($func)
L8 (8):     SEND_USER CV0($a) 1
L9 (8):     DO_FCALL
L10 (8):    RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/second_ex/second_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($var) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($var)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
```

- DISCOVERY:

```bash
cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

### Instance 3

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
$func = 'F';
call_user_func_array($func, array($a));
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=12, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/third_ex/third_ex.php:1-8
L0 (6):     EXT_STMT
L1 (6):     T2 = FETCH_R (global) string("_GET")
L2 (6):     T3 = FETCH_DIM_R T2 string("p1")
L3 (6):     ASSIGN CV0($a) T3
L4 (7):     EXT_STMT
L5 (7):     ASSIGN CV1($func) string("F")
L6 (8):     EXT_STMT
L7 (8):     INIT_USER_CALL 0 string("call_user_func_array") CV1($func)
L8 (8):     T6 = INIT_ARRAY 1 (packed) CV0($a) NEXT
L9 (8):     SEND_ARRAY 0 T6
L10 (8):    DO_FCALL
L11 (8):    RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/third_ex/third_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($var) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($var)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
```

- DISCOVERY:

```bash
cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.l
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
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func($func . "_something", $a);
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=10, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/fourth_ex/fourth_ex.php:1-7
L0 (6):     EXT_STMT
L1 (6):     T2 = FETCH_R (global) string("_GET")
L2 (6):     T3 = FETCH_DIM_R T2 string("p1")
L3 (6):     ASSIGN CV0($a) T3
L4 (7):     EXT_STMT
L5 (7):     T5 = CONCAT CV1($func) string("_something")
L6 (7):     INIT_USER_CALL 1 string("call_user_func") T5
L7 (7):     SEND_USER CV0($a) 1
L8 (7):     DO_FCALL
L9 (7):     RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/fourth_ex/fourth_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($var) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($var)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
```

- DISCOVERY:

```bash
cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

### Instance 5

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func($func, $a);
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=9, args=0, vars=2, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/fifth_ex/fifth_ex.php:1-7
L0 (6):     EXT_STMT
L1 (6):     T2 = FETCH_R (global) string("_GET")
L2 (6):     T3 = FETCH_DIM_R T2 string("p1")
L3 (6):     ASSIGN CV0($a) T3
L4 (7):     EXT_STMT
L5 (7):     INIT_USER_CALL 1 string("call_user_func") CV1($func)
L6 (7):     SEND_USER CV0($a) 1
L7 (7):     DO_FCALL
L8 (7):     RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/fifth_ex/fifth_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($var) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($var)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*INIT_USER_CALL.*").map{x => (x.argument.order(1).code("call_user_func.*"),x.argument.order(2).code("CV*|T*|V*"))}.size
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

