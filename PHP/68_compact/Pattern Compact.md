# Pattern: Compact

## Category

Built-in Functions

## Definition

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$a = $_GET["p1"];
$city  = "San Francisco";
$state = "CA";
$event = $a;

$location_vars = array("city", "state");
$event = "event";
$result = compact($event, $location_vars);
echo $result['event'];
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=24, args=0, vars=6, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/99_compact/first_ex/first_ex.php:1-11
L0 (2):     EXT_STMT
L1 (2):     T6 = FETCH_R (global) string("_GET")
L2 (2):     T7 = FETCH_DIM_R T6 string("p1")
L3 (2):     ASSIGN CV0($a) T7
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($city) string("San Francisco")
L6 (4):     EXT_STMT
L7 (4):     ASSIGN CV2($state) string("CA")
L8 (5):     EXT_STMT
L9 (5):     ASSIGN CV3($event) CV0($a)
L10 (7):    EXT_STMT
L11 (7):    ASSIGN CV4($location_vars) array(...)
L12 (8):    EXT_STMT
L13 (8):    ASSIGN CV3($event) string("event")
L14 (9):    EXT_STMT
L15 (9):    INIT_FCALL 2 112 string("compact")
L16 (9):    SEND_VAR CV3($event) 1
L17 (9):    SEND_VAR CV4($location_vars) 2
L18 (9):    V14 = DO_FCALL
L19 (9):    ASSIGN CV5($result) V14
L20 (10):   EXT_STMT
L21 (10):   T16 = FETCH_DIM_R CV5($result) string("event")
L22 (10):   ECHO T16
L23 (11):   RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("compact").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

### Instance 2

- CATEGORY: D4
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$a = $_GET["p1"];
$city  = "San Francisco";
$state = "CA";
$event = $a;
$x = $_GET["p2"]; // event
$location_vars = array("city", "state");
$result = compact($x, $location_vars);
echo $result['event'];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=26, args=0, vars=7, tmps=13)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/99_compact/second_ex/second_ex.php:1-9
L0 (2):     EXT_STMT
L1 (2):     T7 = FETCH_R (global) string("_GET")
L2 (2):     T8 = FETCH_DIM_R T7 string("p1")
L3 (2):     ASSIGN CV0($a) T8
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($city) string("San Francisco")
L6 (4):     EXT_STMT
L7 (4):     ASSIGN CV2($state) string("CA")
L8 (5):     EXT_STMT
L9 (5):     ASSIGN CV3($event) CV0($a)
L10 (6):    EXT_STMT
L11 (6):    T13 = FETCH_R (global) string("_GET")
L12 (6):    T14 = FETCH_DIM_R T13 string("p2")
L13 (6):    ASSIGN CV4($x) T14
L14 (7):    EXT_STMT
L15 (7):    ASSIGN CV5($location_vars) array(...)
L16 (8):    EXT_STMT
L17 (8):    INIT_FCALL 2 112 string("compact")
L18 (8):    SEND_VAR CV4($x) 1
L19 (8):    SEND_VAR CV5($location_vars) 2
L20 (8):    V17 = DO_FCALL
L21 (8):    ASSIGN CV6($result) V17
L22 (9):    EXT_STMT
L23 (9):    T19 = FETCH_DIM_R CV6($result) string("event")
L24 (9):    ECHO T19
L25 (9):    RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("compact").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

