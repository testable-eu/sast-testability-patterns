# Pattern: Variable Variables

## Category

Variables

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

$a = 'b';
$b = $_GET["p1"];

echo $$a;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=10, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/2_variable_variables/first_ex/first_ex.php:1-6
L0 (3):     EXT_STMT
L1 (3):     ASSIGN CV0($a) string("b")
L2 (4):     EXT_STMT
L3 (4):     T3 = FETCH_R (global) string("_GET")
L4 (4):     T4 = FETCH_DIM_R T3 string("p1")
L5 (4):     ASSIGN CV1($b) T4
L6 (6):     EXT_STMT
L7 (6):     T6 = FETCH_R (local) CV0($a)
L8 (6):     ECHO T6
L9 (6):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call.code(".*FETCH_W.*local.*|.*FETCH_R.*local.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.l
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

$a = $_GET["p1"]; // The input value is 'b'
$b = $_GET["p1"];

echo $$a;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO     | NO  | NO        | NO     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=12, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/2_variable_variables/second_ex/second_ex.php:1-6
L0 (3):     EXT_STMT
L1 (3):     T2 = FETCH_R (global) string("_GET")
L2 (3):     T3 = FETCH_DIM_R T2 string("p1")
L3 (3):     ASSIGN CV0($a) T3
L4 (4):     EXT_STMT
L5 (4):     T5 = FETCH_R (global) string("_GET")
L6 (4):     T6 = FETCH_DIM_R T5 string("p1")
L7 (4):     ASSIGN CV1($b) T6
L8 (6):     EXT_STMT
L9 (6):     T8 = FETCH_R (local) CV0($a)
L10 (6):    ECHO T8
L11 (6):    RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*FETCH_W.*|.*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("local").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```