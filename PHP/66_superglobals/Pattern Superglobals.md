# Pattern: Superglobals

## Category

Built-in Functions

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
    echo $_SERVER['SERVER_NAME'];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | YES     | YES  | YES       | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=5, args=0, vars=0, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/105_superglobals/first_ex/first_ex.php:1-2
L0 (2):     EXT_STMT
L1 (2):     T0 = FETCH_R (global) string("_SERVER")
L2 (2):     T1 = FETCH_DIM_R T0 string("SERVER_NAME")
L3 (2):     ECHO T1
L4 (2):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_SERVER").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
session_start();
$_SESSION["newsession"]=$_GET["p1"];

include("second_ex_b.php");
//second_ex_b.php
<?php
echo $_SESSION["newsession"];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES   | NO      | YES  | NO        | YES      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash

$_main: ; (lines=12, args=0, vars=0, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/105_superglobals/second_ex/second_ex_a.php:1-6
L0 (2):     EXT_STMT
L1 (2):     INIT_FCALL 0 80 string("session_start")
L2 (2):     DO_FCALL
L3 (3):     EXT_STMT
L4 (3):     T3 = FETCH_R (global) string("_GET")
L5 (3):     T4 = FETCH_DIM_R T3 string("p1")
L6 (3):     V1 = FETCH_W (global) string("_SESSION")
L7 (3):     ASSIGN_DIM V1 string("newsession")
L8 (3):     OP_DATA T4
L9 (5):     EXT_STMT
L10 (5):    INCLUDE_OR_EVAL (include) string("second_ex_b.php")
L11 (6):    RETURN int(1)
LIVE RANGES:
        4: L6 - L7 (tmp/var)

$_main: ; (lines=5, args=0, vars=0, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/105_superglobals/second_ex/second_ex_b.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T0 = FETCH_R (global) string("_SESSION")
L2 (2):     T1 = FETCH_DIM_R T0 string("newsession")
L3 (2):     ECHO T1
L4 (3):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_SESSION").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

### Instance 3

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
    echo $_ENV["p1"];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | YES     | NO   | NO        | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=5, args=0, vars=0, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/105_superglobals/third_ex/third_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T0 = FETCH_R (global) string("_ENV")
L2 (2):     T1 = FETCH_DIM_R T0 string("p1")
L3 (2):     ECHO T1
L4 (3):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_ENV").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

### Instance 4

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
    echo $_FILES["p1"];
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | YES     | YES  | YES       | NO      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=5, args=0, vars=0, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/105_superglobals/fourth_ex/fourth_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T0 = FETCH_R (global) string("_FILES")
L2 (2):     T1 = FETCH_DIM_R T0 string("p1")
L3 (2):     ECHO T1
L4 (3):     RETURN int(1)

```

- DISCOVERY:

```bash
cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_FILES").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

