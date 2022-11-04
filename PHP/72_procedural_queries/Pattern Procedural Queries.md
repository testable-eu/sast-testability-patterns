# Pattern: Procedural Queries

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
$link = mysqli_connect("localhost", "my_user", "my_password", "world");
/* Create table doesn't return a resultset */
mysqli_query($link, "SELECT name, color, calories FROM $a ORDER BY name");
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | YES       | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=21, args=0, vars=2, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/96_procedural_queries/first_ex/first_ex.php:1-5
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL_BY_NAME 4 string("mysqli_connect")
L6 (3):     SEND_VAL_EX string("localhost") 1
L7 (3):     SEND_VAL_EX string("my_user") 2
L8 (3):     SEND_VAL_EX string("my_password") 3
L9 (3):     SEND_VAL_EX string("world") 4
L10 (3):    V5 = DO_FCALL
L11 (3):    ASSIGN CV1($link) V5
L12 (5):    EXT_STMT
L13 (5):    INIT_FCALL_BY_NAME 2 string("mysqli_query")
L14 (5):    SEND_VAR_EX CV1($link) 1
L15 (5):    T8 = ROPE_INIT 3 string("SELECT name, color, calories FROM ")
L16 (5):    T8 = ROPE_ADD 1 T8 CV0($a)
L17 (5):    T7 = ROPE_END 2 T8 string(" ORDER BY name")
L18 (5):    SEND_VAL_EX T7 2
L19 (5):    DO_FCALL
L20 (5):    RETURN int(1)
LIVE RANGES:
        8: L15 - L17 (rope)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(1).code("mysqli_query").location.l
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
$link = mysql_connect("localhost", "my_user", "my_password", "world");
/* Create table doesn't return a resultset */
mysql_query($link, "SELECT name, color, calories FROM $a ORDER BY name");
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=21, args=0, vars=2, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/96_procedural_queries/second_ex/second_ex.php:1-5
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL_BY_NAME 4 string("mysql_connect")
L6 (3):     SEND_VAL_EX string("localhost") 1
L7 (3):     SEND_VAL_EX string("my_user") 2
L8 (3):     SEND_VAL_EX string("my_password") 3
L9 (3):     SEND_VAL_EX string("world") 4
L10 (3):    V5 = DO_FCALL
L11 (3):    ASSIGN CV1($link) V5
L12 (5):    EXT_STMT
L13 (5):    INIT_FCALL_BY_NAME 2 string("mysql_query")
L14 (5):    SEND_VAR_EX CV1($link) 1
L15 (5):    T8 = ROPE_INIT 3 string("SELECT name, color, calories FROM ")
L16 (5):    T8 = ROPE_ADD 1 T8 CV0($a)
L17 (5):    T7 = ROPE_END 2 T8 string(" ORDER BY name")
L18 (5):    SEND_VAL_EX T7 2
L19 (5):    DO_FCALL
L20 (5):    RETURN int(1)
LIVE RANGES:
        8: L15 - L17 (rope)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(1).code("mysql_query").location.l
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
$link = mysql_connect("localhost", "my_user", "my_password", "world");
/* Create table doesn't return a resultset */
$sql = "SELECT name, color, calories FROM ". $a ."ORDER BY name";
mysql_query($link, $sql);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      |NO    |NO         | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=22, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/96_procedural_queries/third_ex/third_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($a) T4
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL_BY_NAME 4 string("mysql_connect")
L6 (3):     SEND_VAL_EX string("localhost") 1
L7 (3):     SEND_VAL_EX string("my_user") 2
L8 (3):     SEND_VAL_EX string("my_password") 3
L9 (3):     SEND_VAL_EX string("world") 4
L10 (3):    V6 = DO_FCALL
L11 (3):    ASSIGN CV1($link) V6
L12 (5):    EXT_STMT
L13 (5):    T8 = CONCAT string("SELECT name, color, calories FROM ") CV0($a)
L14 (5):    T9 = CONCAT T8 string("ORDER BY name")
L15 (5):    ASSIGN CV2($sql) T9
L16 (6):    EXT_STMT
L17 (6):    INIT_FCALL_BY_NAME 2 string("mysql_query")
L18 (6):    SEND_VAR_EX CV1($link) 1
L19 (6):    SEND_VAR_EX CV2($sql) 2
L20 (6):    DO_FCALL
L21 (6):    RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(1).code("mysql_query").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

