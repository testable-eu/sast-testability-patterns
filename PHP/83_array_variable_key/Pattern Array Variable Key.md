# Pattern: Array Variable Key

## Category

Array

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
// The second case
// For the third case: $a = $_GET["pa"];
$a = "abc";
$b = $_GET["p1"];
$x = array(1,2,$a=>$b);
echo $x["abc"];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES   | NO      | NO   | NO        | YES     | YES       | YES      |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=15, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/84_array_variable_key/first_ex/first_ex.php:1-7
L0 (4):     EXT_STMT
L1 (4):     ASSIGN CV0($a) string("abc")
L2 (5):     EXT_STMT
L3 (5):     T4 = FETCH_R (global) string("_GET")
L4 (5):     T5 = FETCH_DIM_R T4 string("p1")
L5 (5):     ASSIGN CV1($b) T5
L6 (6):     EXT_STMT
L7 (6):     T7 = INIT_ARRAY 3 (packed) int(1) NEXT
L8 (6):     T7 = ADD_ARRAY_ELEMENT int(2) NEXT
L9 (6):     T7 = ADD_ARRAY_ELEMENT CV1($b) CV0($a)
L10 (6):    ASSIGN CV2($x) T7
L11 (7):    EXT_STMT
L12 (7):    T9 = FETCH_DIM_R CV2($x) string("abc")
L13 (7):    ECHO T9
L14 (7):    RETURN int(1)
LIVE RANGES:
        7: L8 - L10 (tmp/var)
```

- DISCOVERY:

```bash
def G5 = cpg.call("ASSIGN").code(".*string.*").argument.order(0).isIdentifier.name.l.distinct
def R6 = cpg.call("ASSIGN_DIM|FETCH_DIM_R|FETCH_DIM_W|FETCH_DIM_RW|ADD_ARRAY_ELEMENT").l
R6.filter{ call => G5.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size
    
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

### Instance 2

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: YES
- CODE:

```php
<?php
// The second case
// For the third case: $a = $_GET["pa"];
$a = "abc";
$b = $_GET["p1"];
$x = array(1,2,$a=>$b);
echo $x["ttt"];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | -      | -   | -        | YES     | YES       | NO      |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=4, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/84_array_variable_key/second_ex/second_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($a) string("ttt")
L2 (3):     EXT_STMT
L3 (3):     T5 = FETCH_R (global) string("_GET")
L4 (3):     T6 = FETCH_DIM_R T5 string("p1")
L5 (3):     ASSIGN CV1($b) T6
L6 (4):     EXT_STMT
L7 (4):     T8 = FETCH_R (global) string("_GET")
L8 (4):     T9 = FETCH_DIM_R T8 string("p2")
L9 (4):     ASSIGN CV2($c) T9
L10 (5):    EXT_STMT
L11 (5):    T11 = INIT_ARRAY 3 (packed) int(1) NEXT
L12 (5):    T11 = ADD_ARRAY_ELEMENT int(2) NEXT
L13 (5):    T11 = ADD_ARRAY_ELEMENT CV1($b) CV0($a)
L14 (5):    ASSIGN CV3($x) T11
L15 (6):    EXT_STMT
L16 (6):    T13 = FETCH_DIM_R CV3($x) CV2($c)
L17 (6):    ECHO T13
L18 (6):    RETURN int(1)
LIVE RANGES:
        11: L12 - L14 (tmp/var)
```

- DISCOVERY:

```bash

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
<?php
$a = "ttt";
$b = $_GET["p1"];
$c = $_GET["p2"]; // $c is ttt
$x = array(1,2,$a=>$b);
echo $x[$c];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | YES       | YES     |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=4, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/84_array_variable_key/third_ex/third_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($a) string("ttt")
L2 (3):     EXT_STMT
L3 (3):     T5 = FETCH_R (global) string("_GET")
L4 (3):     T6 = FETCH_DIM_R T5 string("p1")
L5 (3):     ASSIGN CV1($b) T6
L6 (4):     EXT_STMT
L7 (4):     T8 = FETCH_R (global) string("_GET")
L8 (4):     T9 = FETCH_DIM_R T8 string("p2")
L9 (4):     ASSIGN CV2($c) T9
L10 (5):    EXT_STMT
L11 (5):    T11 = INIT_ARRAY 3 (packed) int(1) NEXT
L12 (5):    T11 = ADD_ARRAY_ELEMENT int(2) NEXT
L13 (5):    T11 = ADD_ARRAY_ELEMENT CV1($b) CV0($a)
L14 (5):    ASSIGN CV3($x) T11
L15 (6):    EXT_STMT
L16 (6):    T13 = FETCH_DIM_R CV3($x) CV2($c)
L17 (6):    ECHO T13
L18 (6):    RETURN int(1)
LIVE RANGES:
        11: L12 - L14 (tmp/var)
```

- DISCOVERY:

```bash
cpg.call(".*FETCH_DIM_.*|.*ADD_ARRAY_ELEMENT.*|.*ASSIGN_DIM.*").argument.order(1).code("CV.*").location.l+cpg.call(".*INIT_ARRAY.*").argument.order(3).code("CV.*|T.*|V.*").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

### Instance 4

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: YES
- CODE:

```php
<?php
$a = "ttt";
$b = $_GET["p1"];
$c = $_GET["p2"]; // $c is 1
$x = array(1,2,$a=>$b);
echo $x[$c];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | -   | -      | -   | -        | YES     | YES       | NO     |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=4, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/84_array_variable_key/third_ex/third_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($a) string("ttt")
L2 (3):     EXT_STMT
L3 (3):     T5 = FETCH_R (global) string("_GET")
L4 (3):     T6 = FETCH_DIM_R T5 string("p1")
L5 (3):     ASSIGN CV1($b) T6
L6 (4):     EXT_STMT
L7 (4):     T8 = FETCH_R (global) string("_GET")
L8 (4):     T9 = FETCH_DIM_R T8 string("p2")
L9 (4):     ASSIGN CV2($c) T9
L10 (5):    EXT_STMT
L11 (5):    T11 = INIT_ARRAY 3 (packed) int(1) NEXT
L12 (5):    T11 = ADD_ARRAY_ELEMENT int(2) NEXT
L13 (5):    T11 = ADD_ARRAY_ELEMENT CV1($b) CV0($a)
L14 (5):    ASSIGN CV3($x) T11
L15 (6):    EXT_STMT
L16 (6):    T13 = FETCH_DIM_R CV3($x) CV2($c)
L17 (6):    ECHO T13
L18 (6):    RETURN int(1)
LIVE RANGES:
        11: L12 - L14 (tmp/var)

```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

