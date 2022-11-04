# Pattern: Array Walk

## Category

Built-in Functions

## Definition

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$b = $_GET["p1"];
// Normal function
function F($b){
    echo $b;
}
// Closure
$example = function ($b){
    echo $b;
};
$arr = [$b,$b,$b];
// it will call the closuer $example and print the value of $b
// XSS Vulnerability
array_walk($arr, $example);
// it will call the function F and print the value of $b
// XSS Vulnerability
array_walk($arr, 'F'); 
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=23, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/first_ex/first_ex.php:1-17
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (8):     EXT_STMT
L5 (8):     T6 = DECLARE_LAMBDA_FUNCTION string("")
L6 (10):    ASSIGN CV1($example) T6
L7 (11):    EXT_STMT
L8 (11):    T8 = INIT_ARRAY 3 (packed) CV0($b) NEXT
L9 (11):    T8 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L10 (11):   T8 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L11 (11):   ASSIGN CV2($arr) T8
L12 (14):   EXT_STMT
L13 (14):   INIT_FCALL 2 112 string("array_walk")
L14 (14):   SEND_REF CV2($arr) 1
L15 (14):   SEND_VAR CV1($example) 2
L16 (14):   DO_FCALL
L17 (17):   EXT_STMT
L18 (17):   INIT_FCALL 2 112 string("array_walk")
L19 (17):   SEND_REF CV2($arr) 1
L20 (17):   SEND_VAL string("F") 2
L21 (17):   DO_FCALL
L22 (17):   RETURN int(1)
LIVE RANGES:
        8: L9 - L11 (tmp/var)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/first_ex/first_ex.php:4-6
L0 (4):     EXT_NOP
L1 (4):     CV0($b) = RECV 1
L2 (5):     EXT_STMT
L3 (5):     ECHO CV0($b)
L4 (6):     EXT_STMT
L5 (6):     RETURN null

{closure}: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/first_ex/first_ex.php:8-10
L0 (8):     EXT_NOP
L1 (8):     CV0($b) = RECV 1
L2 (9):     EXT_STMT
L3 (9):     ECHO CV0($b)
L4 (10):    EXT_STMT
L5 (10):    RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_walk").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: T2

change array_walk with function and arguments. Not mantained code semantic, but same vulnerability.

```

```

### Instance 2

- CATEGORY: D4
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$b = $_GET["p1"];
$c = $_GET["p2"];
// Normal function
function F($b){
    echo $b;
}
// Closure
$example = function ($b){
    echo $b;
};
$arr = [$b,$b,$b];
// it will call the closuer $example and print the value of $b
// XSS Vulnerability
array_walk($arr, $example);
// it will call the function F and print the value of $b
// XSS Vulnerability
array_walk($arr, $c); 
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO  | NO      | NO   | NO        | NO      | NO        | YES     |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=27, args=0, vars=4, tmps=12)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/second_ex/second_ex.php:1-18
L0 (2):     EXT_STMT
L1 (2):     T4 = FETCH_R (global) string("_GET")
L2 (2):     T5 = FETCH_DIM_R T4 string("p1")
L3 (2):     ASSIGN CV0($b) T5
L4 (3):     EXT_STMT
L5 (3):     T7 = FETCH_R (global) string("_GET")
L6 (3):     T8 = FETCH_DIM_R T7 string("p2")
L7 (3):     ASSIGN CV1($c) T8
L8 (9):     EXT_STMT
L9 (9):     T10 = DECLARE_LAMBDA_FUNCTION string("")
L10 (11):   ASSIGN CV2($example) T10
L11 (12):   EXT_STMT
L12 (12):   T12 = INIT_ARRAY 3 (packed) CV0($b) NEXT
L13 (12):   T12 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L14 (12):   T12 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L15 (12):   ASSIGN CV3($arr) T12
L16 (15):   EXT_STMT
L17 (15):   INIT_FCALL 2 112 string("array_walk")
L18 (15):   SEND_REF CV3($arr) 1
L19 (15):   SEND_VAR CV2($example) 2
L20 (15):   DO_FCALL
L21 (18):   EXT_STMT
L22 (18):   INIT_FCALL 2 112 string("array_walk")
L23 (18):   SEND_REF CV3($arr) 1
L24 (18):   SEND_VAR CV1($c) 2
L25 (18):   DO_FCALL
L26 (18):   RETURN int(1)
LIVE RANGES:
        12: L13 - L15 (tmp/var)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/second_ex/second_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($b)
L4 (7):     EXT_STMT
L5 (7):     RETURN null

{closure}: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/second_ex/second_ex.php:9-11
L0 (9):     EXT_NOP
L1 (9):     CV0($b) = RECV 1
L2 (10):    EXT_STMT
L3 (10):    ECHO CV0($b)
L4 (11):    EXT_STMT
L5 (11):    RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_walk").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

change array_walk with function and arguments. Not mantained code semantic, but same vulnerability.

```

```

