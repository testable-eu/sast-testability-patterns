# Pattern: Get Called Class

## Category

Objects

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
class A {
    public static function who($b) {
        echo "safe";
    }
    public static function test($b) {
        get_called_class()::who($b);
    }
}

class B extends A {
    public static function who($b) {
        echo $b;
    }
}

$b = $_GET["p1"];
B::test($b);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=9, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/37_get_called_class/37_get_called_class.php:1-18
L0 (17):    EXT_STMT
L1 (17):    T1 = FETCH_R (global) string("_GET")
L2 (17):    T2 = FETCH_DIM_R T1 string("p1")
L3 (17):    ASSIGN CV0($b) T2
L4 (18):    EXT_STMT
L5 (18):    INIT_STATIC_METHOD_CALL 1 string("B") string("test")
L6 (18):    SEND_VAR CV0($b) 1
L7 (18):    DO_FCALL
L8 (18):    RETURN int(1)

A::who: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/37_get_called_class/37_get_called_class.php:3-5
L0 (3):     EXT_NOP
L1 (3):     CV0($b) = RECV 1
L2 (4):     EXT_STMT
L3 (4):     ECHO string("safe")
L4 (5):     EXT_STMT
L5 (5):     RETURN null

A::test: ; (lines=10, args=1, vars=1, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/37_get_called_class/37_get_called_class.php:6-8
L0 (6):     EXT_NOP
L1 (6):     CV0($b) = RECV 1
L2 (7):     EXT_STMT
L3 (7):     T1 = GET_CALLED_CLASS
L4 (7):     V2 = FETCH_CLASS (exception) T1
L5 (7):     INIT_STATIC_METHOD_CALL 1 V2 string("who")
L6 (7):     SEND_VAR_EX CV0($b) 1
L7 (7):     DO_FCALL
L8 (8):     EXT_STMT
L9 (8):     RETURN null

B::who: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/37_get_called_class/37_get_called_class.php:12-14
L0 (12):    EXT_NOP
L1 (12):    CV0($b) = RECV 1
L2 (13):    EXT_STMT
L3 (13):    ECHO CV0($b)
L4 (14):    EXT_STMT
L5 (14):    RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*GET_CALLED_CLASS.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

