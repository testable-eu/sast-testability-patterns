# Pattern: Methods Variable

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

class myclass{
	
	function F($b){
		echo $b;
	}
}

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$func = "F";
$obj->$func($a);

```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      |  NO  |    NO     |   NO    |  NO       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=15, args=0, vars=3, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/114_methods_variable/first_ex/first_ex.php:1-15
L0 (10):    EXT_STMT
L1 (10):    T3 = FETCH_R (global) string("_GET")
L2 (10):    T4 = FETCH_DIM_R T3 string("p1")
L3 (10):    ASSIGN CV0($a) T4
L4 (12):    EXT_STMT
L5 (12):    V6 = NEW 0 string("myclass")
L6 (12):    DO_FCALL
L7 (12):    ASSIGN CV1($obj) V6
L8 (13):    EXT_STMT
L9 (13):    ASSIGN CV2($func) string("F")
L10 (14):   EXT_STMT
L11 (14):   INIT_METHOD_CALL 1 CV1($obj) CV2($func)
L12 (14):   SEND_VAR_EX CV0($a) 1
L13 (14):   DO_FCALL
L14 (15):   RETURN int(1)
LIVE RANGES:
        6: L6 - L7 (new)

myclass::F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/114_methods_variable/first_ex/first_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($b)
L4 (7):     EXT_STMT
L5 (7):     RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*INIT_METHOD_CALL.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).location.l
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

class myclass{
	
	function F($b){
		echo $b;
	}
}

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$func = $_GET["p2"];
$obj->$func($a);

```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=17, args=0, vars=3, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/114_methods_variable/second_ex/second_ex.php:1-15
L0 (10):    EXT_STMT
L1 (10):    T3 = FETCH_R (global) string("_GET")
L2 (10):    T4 = FETCH_DIM_R T3 string("p1")
L3 (10):    ASSIGN CV0($a) T4
L4 (12):    EXT_STMT
L5 (12):    V6 = NEW 0 string("myclass")
L6 (12):    DO_FCALL
L7 (12):    ASSIGN CV1($obj) V6
L8 (13):    EXT_STMT
L9 (13):    T9 = FETCH_R (global) string("_GET")
L10 (13):   T10 = FETCH_DIM_R T9 string("p2")
L11 (13):   ASSIGN CV2($func) T10
L12 (14):   EXT_STMT
L13 (14):   INIT_METHOD_CALL 1 CV1($obj) CV2($func)
L14 (14):   SEND_VAR_EX CV0($a) 1
L15 (14):   DO_FCALL
L16 (15):   RETURN int(1)
LIVE RANGES:
        6: L6 - L7 (new)

myclass::F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/114_methods_variable/second_ex/second_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($b)
L4 (7):     EXT_STMT
L5 (7):     RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*INIT_METHOD_CALL.*").argument.order(2).code("CV.*|T.*|V.*").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```























