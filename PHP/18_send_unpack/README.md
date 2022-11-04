# Pattern: Send Unpack

## Category

Functions

## Definition

## Instances

### Instance 1

- CATEGORY:  S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
// $a = 1, $b = $b the input
function add($a, $b) {
    echo $a;
    // XSS vulnerability
    echo $b;
}

$b = $_GET["p1"];
$a = [1, $b];
add(...$a);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | YES     | NO   | NO        | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=13, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/11_send_unpack/11_send_unpack.php:1-11
L0 (9):     EXT_STMT
L1 (9):     T2 = FETCH_R (global) string("_GET")
L2 (9):     T3 = FETCH_DIM_R T2 string("p1")
L3 (9):     ASSIGN CV0($b) T3
L4 (10):    EXT_STMT
L5 (10):    T5 = INIT_ARRAY 2 (packed) int(1) NEXT
L6 (10):    T5 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L7 (10):    ASSIGN CV1($a) T5
L8 (11):    EXT_STMT
L9 (11):    INIT_FCALL 0 112 string("add")
L10 (11):   SEND_UNPACK CV1($a)
L11 (11):   DO_FCALL
L12 (11):   RETURN int(1)
LIVE RANGES:
        5: L6 - L7 (tmp/var)

add: ; (lines=9, args=2, vars=2, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/11_send_unpack/11_send_unpack.php:3-7
L0 (3):     EXT_NOP
L1 (3):     CV0($a) = RECV 1
L2 (3):     CV1($b) = RECV 2
L3 (4):     EXT_STMT
L4 (4):     ECHO CV0($a)
L5 (6):     EXT_STMT
L6 (6):     ECHO CV1($b)
L7 (7):     EXT_STMT
L8 (7):     RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*SEND_UNPACK.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```



