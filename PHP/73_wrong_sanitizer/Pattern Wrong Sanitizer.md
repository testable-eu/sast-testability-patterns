# Pattern: Wrong Sanitizer

## Category

Built-in Functions

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  YES
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$x = $_GET["p"];
// " onfocus="alert(1)" autofocus="
// https://security.stackexchange.com/questions/97550/how-to-launch-xss-code-from-an-input-html-tag-upon-page-load
$y = strip_tags($x);
?>

<input type="hidden" name="return" value="<?php echo $y ?>" />
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | YES     | NO   | YES       | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=16, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/72_wrong_sanitizer/first_ex/first_ex.php:1-9
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p")
L3 (2):     ASSIGN CV0($x) T3
L4 (5):     EXT_STMT
L5 (5):     INIT_FCALL 1 96 string("strip_tags")
L6 (5):     SEND_VAR CV0($x) 1
L7 (5):     V5 = DO_FCALL
L8 (5):     ASSIGN CV1($y) V5
L9 (7):     EXT_STMT
L10 (7):    ECHO string("
<input type="hidden" name="return" value="")
L11 (8):    EXT_STMT
L12 (8):    ECHO CV1($y)
L13 (8):    EXT_STMT
L14 (8):    ECHO string("" />
")
L15 (9):    RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("strip_tags|json_encode").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  YES
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php 
// payload=<img%20src=x%20onerror=alert();>
echo(json_encode($_GET["p1"]));
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | YES     | YES  | YES       | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=8, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/72_wrong_sanitizer/second_ex/second_ex.php:1-4
L0 (3):     EXT_STMT
L1 (3):     INIT_FCALL 1 96 string("json_encode")
L2 (3):     T0 = FETCH_R (global) string("_GET")
L3 (3):     T1 = FETCH_DIM_R T0 string("p1")
L4 (3):     SEND_VAL T1 1
L5 (3):     V2 = DO_FCALL
L6 (3):     ECHO V2
L7 (4):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("strip_tags|json_encode").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

