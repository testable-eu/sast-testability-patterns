# Pattern: Make reference

## Category

Refrences

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: YES
- CODE:

```php
<?php
    $arr = array(1,2,3,4);
    $arr[1] = &$arr[3];
    $arr[3] = $_GET['p1'];
    echo $arr[1];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | -   | -      | -   | NO       | -      | YES       | NO     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=16, args=0, vars=1, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/123_make_ref/first_ex/123_make_ref.php:1-5
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($arr) array(...)
L2 (3):     EXT_STMT
L3 (3):     V3 = FETCH_DIM_W CV0($arr) int(3)
L4 (3):     V4 = MAKE_REF V3
L5 (3):     V2 = FETCH_DIM_W CV0($arr) int(1)
L6 (3):     ASSIGN_REF V2 V4
L7 (4):     EXT_STMT
L8 (4):     T7 = FETCH_R (global) string("_GET")
L9 (4):     T8 = FETCH_DIM_R T7 string("p1")
L10 (4):    ASSIGN_DIM CV0($arr) int(3)
L11 (4):    OP_DATA T8
L12 (5):    EXT_STMT
L13 (5):    T9 = FETCH_DIM_R CV0($arr) int(1)
L14 (5):    ECHO T9
L15 (5):    RETURN int(1)
LIVE RANGES:
        4: L5 - L6 (tmp/var)
```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```


### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
    $arr = array(1,2,3,4);
    $arr[1] = &$arr[3];
    $arr[3] = $_GET['p1'];
    echo $arr[0];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | NO      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=16, args=0, vars=1, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/123_make_ref/second_ex/second_ex.php:1-5
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($arr) array(...)
L2 (3):     EXT_STMT
L3 (3):     V3 = FETCH_DIM_W CV0($arr) int(3)
L4 (3):     V4 = MAKE_REF V3
L5 (3):     V2 = FETCH_DIM_W CV0($arr) int(1)
L6 (3):     ASSIGN_REF V2 V4
L7 (4):     EXT_STMT
L8 (4):     T7 = FETCH_R (global) string("_GET")
L9 (4):     T8 = FETCH_DIM_R T7 string("p1")
L10 (4):    ASSIGN_DIM CV0($arr) int(3)
L11 (4):    OP_DATA T8
L12 (5):    EXT_STMT
L13 (5):    T9 = FETCH_DIM_R CV0($arr) int(0)
L14 (5):    ECHO T9
L15 (5):    RETURN int(1)
LIVE RANGES:
        4: L5 - L6 (tmp/var)
```

- DISCOVERY:

```bash
cpg.call(".*MAKE_REF.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```
