# Pattern: System

## Category

Built-in Functions

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$a = $_GET["p1"];
system($a, $val);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | YES       | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=10, args=0, vars=2, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/101_system/first_ex/first_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 2 112 string("system")
L6 (3):     SEND_VAR CV0($a) 1
L7 (3):     SEND_REF CV1($val) 2
L8 (3):     DO_FCALL
L9 (3):     RETURN int(1)

```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("system").location.l
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
- SOURCES AND SINKS: YES 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$a = $_GET["p1"];
exec($a, $val);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | YES       | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=10, args=0, vars=2, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/101_system/second_ex/second_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 2 112 string("exec")
L6 (3):     SEND_VAR CV0($a) 1
L7 (3):     SEND_REF CV1($val) 2
L8 (3):     DO_FCALL
L9 (3):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("exec").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

### Instance 3

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$a = $_GET["p1"];
unlink($a);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | YES       | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=9, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/101_system/third_ex/third_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T1 = FETCH_R (global) string("_GET")
L2 (2):     T2 = FETCH_DIM_R T1 string("p1")
L3 (2):     ASSIGN CV0($a) T2
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 1 96 string("unlink")
L6 (3):     SEND_VAR CV0($a) 1
L7 (3):     DO_FCALL
L8 (3):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("unlink").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

