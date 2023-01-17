# Pattern: Create Function

## Category

Built-in Functions

## Definition
Old PHP versions (before PHP8) allowed programmers to create functions with `create_function()`.
## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
	$var = $_GET["p1"];
	$newfunc = create_function('$a', 'echo $a;');
	$newfunc($var);
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=15, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/98_create_function/98_create_function.php:1-5
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($var) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 2 112 string("create_function")
L6 (3):     SEND_VAL string("$a") 1
L7 (3):     SEND_VAL string("echo $a;") 2
L8 (3):     V5 = DO_FCALL
L9 (3):     ASSIGN CV1($newfunc) V5
L10 (4):    EXT_STMT
L11 (4):    INIT_DYNAMIC_CALL 1 CV1($newfunc)
L12 (4):    SEND_VAR_EX CV0($var) 1
L13 (4):    DO_FCALL
L14 (5):    RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("create_function").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

