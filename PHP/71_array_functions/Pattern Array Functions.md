# Pattern: Array Functions

## Category

Built-in Functions

## Definition
PHP has built-in functions operating on arrays instead of regular variables.
## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
    $b = $_GET["p1"];
	$array = array('abc', 'def', $b, 'ghi');
	sort($array);
	// There is a vulnerability
	// It will print the input when the input is smaller than 'abc'
	echo $array[0]."\n";
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/93_array_functions/first_ex/first_ex.php:1-8
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($b) T3
L4 (3):     EXT_STMT
L5 (3):     T5 = INIT_ARRAY 4 (packed) string("abc") NEXT
L6 (3):     T5 = ADD_ARRAY_ELEMENT string("def") NEXT
L7 (3):     T5 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L8 (3):     T5 = ADD_ARRAY_ELEMENT string("ghi") NEXT
L9 (3):     ASSIGN CV1($array) T5
L10 (4):    EXT_STMT
L11 (4):    INIT_FCALL 1 96 string("sort")
L12 (4):    SEND_REF CV1($array) 1
L13 (4):    DO_FCALL
L14 (7):    EXT_STMT
L15 (7):    T8 = FETCH_DIM_R CV1($array) int(0)
L16 (7):    T9 = CONCAT T8 string("
")
L17 (7):    ECHO T9
L18 (8):    RETURN int(1)
LIVE RANGES:
        5: L6 - L9 (tmp/var)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("sort").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$val = $_GET["p1"];
$input = array(12, 10, 9);

$result = array_pad($input, 5, $val);
echo $result[3];
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | NO        | NO      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=17, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/93_array_functions/second_ex/second_ex.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($val) T4
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($input) array(...)
L6 (5):     EXT_STMT
L7 (5):     INIT_FCALL 3 128 string("array_pad")
L8 (5):     SEND_VAR CV1($input) 1
L9 (5):     SEND_VAL int(5) 2
L10 (5):    SEND_VAR CV0($val) 3
L11 (5):    V7 = DO_FCALL
L12 (5):    ASSIGN CV2($result) V7
L13 (6):    EXT_STMT
L14 (6):    T9 = FETCH_DIM_R CV2($result) int(3)
L15 (6):    ECHO T9
L16 (7):    RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_pad").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```
