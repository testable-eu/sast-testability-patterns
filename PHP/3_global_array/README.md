# Pattern: Global Array

## Category

Variables

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php

function F(){
    return $GLOBALS["a"]; // tarpit
}

$a = $_GET["p1"]; // source
$b = F();
echo $b; // sink
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | YES  | YES       | YES      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=8, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/4_global_array/first_ex/first_ex.php:1-9
L0 (7):     EXT_STMT
L1 (7):     T1 = FETCH_R (global) string("_GET")
L2 (7):     T2 = FETCH_DIM_R T1 string("p1")
L3 (7):     ASSIGN CV0($a) T2
L4 (8):     EXT_STMT
L5 (8):     INIT_FCALL 0 112 string("f")
L6 (8):     DO_FCALL
L7 (9):     RETURN int(1)

F: ; (lines=7, args=0, vars=0, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/4_global_array/first_ex/first_ex.php:3-5
L0 (3):     EXT_NOP
L1 (4):     EXT_STMT
L2 (4):     T0 = FETCH_R (global) string("GLOBALS")
L3 (4):     T1 = FETCH_DIM_R T0 string("a")
L4 (4):     ECHO T1
L5 (5):     EXT_STMT
L6 (5):     RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*FETCH_W.*|.*FETCH_R.*|.*FETCH_RW.*").argument.code("GLOBALS").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```