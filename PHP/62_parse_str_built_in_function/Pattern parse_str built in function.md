# Pattern: parse_str 

## Category

Built-in Functions

## Definition

## Instances

### Instance 1

- CATEGORY: D4
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$b = $_GET["p1"];
//"first=value&arr[]=foo+bar&arr[]=baz"
$str = $b;
parse_str($str);
echo $first;  // value
echo $arr[0]; // foo bar
echo $arr[1]; // baz
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=4, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/44_parse_str_function/first_ex/first_ex.php:1-8
L0 (2):     EXT_STMT
L1 (2):     T4 = FETCH_R (global) string("_GET")
L2 (2):     T5 = FETCH_DIM_R T4 string("p1")
L3 (2):     ASSIGN CV0($b) T5
L4 (4):     EXT_STMT
L5 (4):     ASSIGN CV1($str) CV0($b)
L6 (5):     EXT_STMT
L7 (5):     INIT_FCALL 1 96 string("parse_str")
L8 (5):     SEND_VAR CV1($str) 1
L9 (5):     DO_FCALL
L10 (6):    EXT_STMT
L11 (6):    ECHO CV2($first)
L12 (7):    EXT_STMT
L13 (7):    T9 = FETCH_DIM_R CV3($arr) int(0)
L14 (7):    ECHO T9
L15 (8):    EXT_STMT
L16 (8):    T10 = FETCH_DIM_R CV3($arr) int(1)
L17 (8):    ECHO T10
L18 (8):    RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("parse_str").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

