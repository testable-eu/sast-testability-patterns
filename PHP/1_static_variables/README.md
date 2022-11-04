# Pattern: Static Variables

## Category

Variables

## Definition
What happens for the variables inside the function when the function finish simply they die! and if we run the function again, we will have new variables. But if we want to keep the variable life, we have to use static. At the same time, static variables are challenges for the scanners, because the scanner has to record the last value for the variable with the last call for the function.

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

function F($a){
    static $b = 'abc';
    echo $b;
    $b = $a;
}

$a = $_GET["p1"];
F($a);
F('abc');
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=13, args=0, vars=1, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/1_static_variables/1_static_variables.php:1-11
L0 (9):     EXT_STMT
L1 (9):     T1 = FETCH_R (global) string("_GET")
L2 (9):     T2 = FETCH_DIM_R T1 string("p1")
L3 (9):     ASSIGN CV0($a) T2
L4 (10):    EXT_STMT
L5 (10):    INIT_FCALL 1 128 string("f")
L6 (10):    SEND_VAR CV0($a) 1
L7 (10):    DO_FCALL
L8 (11):    EXT_STMT
L9 (11):    INIT_FCALL 1 128 string("f")
L10 (11):   SEND_VAL string("abc") 1
L11 (11):   DO_FCALL
L12 (11):   RETURN int(1)

F: ; (lines=10, args=1, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/1_static_variables/1_static_variables.php:3-7
L0 (3):     EXT_NOP
L1 (3):     CV0($a) = RECV 1
L2 (4):     EXT_STMT
L3 (4):     BIND_STATIC (ref) CV1($b)
L4 (5):     EXT_STMT
L5 (5):     ECHO CV1($b)
L6 (6):     EXT_STMT
L7 (6):     ASSIGN CV1($b) CV0($a)
L8 (7):     EXT_STMT
L9 (7):     RETURN null
```

- DISCOVERY:

In this pattern, I focus on the static variables in functions not the static properties in objects nor static methods. To discover the static variables in opcode, I search for the opcode BIND_STATIC.
```bash
cpg.call(".*BIND_STATIC.*").location.l
```
For regex, I can search for the keyword but I cannot distinguish between static variables and static properties. 
- PRECONDITIONS:
   1.
- TRANSFORMATION: 
```

```