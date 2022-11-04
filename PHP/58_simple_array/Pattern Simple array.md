# Pattern: Simple Array

## Category

Array

## Definition

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$b = $_GET["p1"];
$array = array('abc','def',$b,'ghi');
//Vulnerability (XSS)
echo $array[2];
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | YES       | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=14, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/43_simple_array/first_ex/first_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($b) T3
L4 (3):     EXT_STMT
L5 (3):     T5 = INIT_ARRAY 4 (packed) string("abc") NEXT
L6 (3):     T5 = ADD_ARRAY_ELEMENT string("def") NEXT
L7 (3):     T5 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L8 (3):     T5 = ADD_ARRAY_ELEMENT string("ghi") NEXT
L9 (3):     ASSIGN CV1($array) T5
L10 (5):    EXT_STMT
L11 (5):    T7 = FETCH_DIM_R CV1($array) int(2)
L12 (5):    ECHO T7
L13 (6):    RETURN int(1)
LIVE RANGES:
        5: L6 - L9 (tmp/var)
```

- DISCOVERY:

```bash
cpg.call(".*FETCH_DIM_.*|.*FETCH_DIM_FUNC_ARG.*|.*ADD_ARRAY_ELEMENT.*|.*INIT_ARRAY.*|.*ASSIGN_DIM.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

### Instance 2

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: YES
- CODE:

```php
<?php
$b = $_GET["p1"];
$array = array('abc','def',$b,'ghi');
//Vulnerability (XSS)
echo $array[1];
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | -      | -   | NO        | NO      | YES       | NO      |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=14, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/43_simple_array/second_ex/second_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($b) T3
L4 (3):     EXT_STMT
L5 (3):     T5 = INIT_ARRAY 4 (packed) string("abc") NEXT
L6 (3):     T5 = ADD_ARRAY_ELEMENT string("def") NEXT
L7 (3):     T5 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L8 (3):     T5 = ADD_ARRAY_ELEMENT string("ghi") NEXT
L9 (3):     ASSIGN CV1($array) T5
L10 (5):    EXT_STMT
L11 (5):    T7 = FETCH_DIM_R CV1($array) int(1)
L12 (5):    ECHO T7
L13 (6):    RETURN int(1)
LIVE RANGES:
        5: L6 - L9 (tmp/var)

     3: 0002 - 0005 (tmp/var)
```

- DISCOVERY:

```bash
cpg.call(".*FETCH_DIM_.*|.*FETCH_DIM_FUNC_ARG.*|.*ADD_ARRAY_ELEMENT.*|.*INIT_ARRAY.*|.*ASSIGN_DIM.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

