# Pattern: Closures

## Category

Functions

## Definition

## Instances

### Instance 1

- CATEGORY:  D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$greet = function($name)
{
    printf("Hello %s\r\n", $name);
};
$b = $_GET["p1"];
$greet($b);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=12, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/first_ex/13_closures.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T2 = DECLARE_LAMBDA_FUNCTION string("")
L2 (5):     ASSIGN CV0($greet) T2
L3 (6):     EXT_STMT
L4 (6):     T4 = FETCH_R (global) string("_GET")
L5 (6):     T5 = FETCH_DIM_R T4 string("p1")
L6 (6):     ASSIGN CV1($b) T5
L7 (7):     EXT_STMT
L8 (7):     INIT_DYNAMIC_CALL 1 CV0($greet)
L9 (7):     SEND_VAR_EX CV1($b) 1
L10 (7):    DO_FCALL
L11 (7):    RETURN int(1)

{closure}: ; (lines=9, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/first_ex/13_closures.php:2-5
L0 (2):     EXT_NOP
L1 (2):     CV0($name) = RECV 1
L2 (4):     EXT_STMT
L3 (4):     INIT_FCALL 2 112 string("printf")
L4 (4):     SEND_VAL string("Hello %s
") 1
L5 (4):     SEND_VAR CV0($name) 2
L6 (4):     DO_FCALL
L7 (5):     EXT_STMT
L8 (5):     RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*DECLARE_LAMBDA_FUNCTION.*").location.l
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
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$b = $_GET["p1"];
//$b = "input";

$fn1 = fn($x) => fn($y) => $x . $y;

echo $fn1("safe")($b);
?>
```

- MEASUREMENT:

| Tool            | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| --------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| VulnerabilityNO | YES  | NO      | NO   | NO        | NO      |   YES     | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=17, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/second_ex/second_ex.php:1-8
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (5):     EXT_STMT
L5 (5):     T6 = DECLARE_LAMBDA_FUNCTION string("")
L6 (5):     BIND_LEXICAL T6 CV2($y)
L7 (5):     ASSIGN CV1($fn1) T6
L8 (7):     EXT_STMT
L9 (7):     INIT_DYNAMIC_CALL 1 CV1($fn1)
L10 (7):    SEND_VAL_EX string("safe") 1
L11 (7):    V8 = DO_FCALL
L12 (7):    INIT_DYNAMIC_CALL 1 V8
L13 (7):    SEND_VAR_EX CV0($b) 1
L14 (7):    V9 = DO_FCALL
L15 (7):    ECHO V9
L16 (8):    RETURN int(1)
LIVE RANGES:
        6: L6 - L7 (tmp/var)

{closure}: ; (lines=9, args=1, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/second_ex/second_ex.php:5-5
L0 (5):     EXT_NOP
L1 (5):     CV0($x) = RECV 1
L2 (5):     BIND_STATIC CV1($y)
L3 (5):     EXT_STMT
L4 (5):     T2 = DECLARE_LAMBDA_FUNCTION string("")
L5 (5):     BIND_LEXICAL T2 CV0($x)
L6 (5):     RETURN T2
L7 (5):     EXT_STMT
L8 (5):     RETURN null
LIVE RANGES:
        2: L5 - L6 (tmp/var)

{closure}: ; (lines=8, args=1, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/second_ex/second_ex.php:5-5
L0 (5):     EXT_NOP
L1 (5):     CV0($y) = RECV 1
L2 (5):     BIND_STATIC CV1($x)
L3 (5):     EXT_STMT
L4 (5):     T2 = CONCAT CV1($x) CV0($y)
L5 (5):     RETURN T2
L6 (5):     EXT_STMT
L7 (5):     RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*DECLARE_LAMBDA_FUNCTION.*").location.l
```


- PRECONDITIONS:
   1.
- TRANSFORMATION: 

```

```



