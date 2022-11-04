# Pattern: Foreach With Array

## Category

Array

## Definition

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
$array = array(
    "foo" => "bar",
    "bar" => "foo",
    "too"   => $b,
    -100  => 100,
);

foreach(array_keys($array) as $key){
    // XSS when we will print $key
    echo "$key => $array[$key]\n";
}
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES   | NO      | NO   | NO        | NO      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=26, args=0, vars=3, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/56_foreach_with_array/first_ex/first_ex.php:1-12
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (4):     EXT_STMT
L5 (4):     T6 = INIT_ARRAY 4 string("bar") string("foo")
L6 (5):     T6 = ADD_ARRAY_ELEMENT string("foo") string("bar")
L7 (6):     T6 = ADD_ARRAY_ELEMENT CV0($b) string("too")
L8 (7):     T6 = ADD_ARRAY_ELEMENT int(100) int(-100)
L9 (7):     ASSIGN CV1($array) T6
L10 (10):   EXT_STMT
L11 (10):   INIT_FCALL 1 96 string("array_keys")
L12 (10):   SEND_VAR CV1($array) 1
L13 (10):   V8 = DO_FCALL
L14 (10):   V9 = FE_RESET_R V8 L24
L15 (10):   FE_FETCH_R V9 CV2($key) L24
L16 (11):   EXT_STMT
L17 (11):   T12 = ROPE_INIT 4 CV2($key)
L18 (11):   T12 = ROPE_ADD 1 T12 string(" => ")
L19 (11):   T10 = FETCH_DIM_R CV1($array) CV2($key)
L20 (11):   T12 = ROPE_ADD 2 T12 T10
L21 (11):   T11 = ROPE_END 3 T12 string("
")
L22 (11):   ECHO T11
L23 (10):   JMP L15
L24 (10):   FE_FREE V9
L25 (12):   RETURN int(1)
LIVE RANGES:
        6: L6 - L9 (tmp/var)
        9: L15 - L24 (loop)
        12: L17 - L21 (rope)
```

- DISCOVERY:

Adding to array two elements

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_keys").location.l
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
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$b = $_GET["p1"];
//$b = "input";
$array = array(
    "foo" => "bar",
    "bar" => "foo",
    "too"   => $b,
    -100  => 100,
);

foreach($array as $key => $value){
    // XSS when we will print $key
    echo "$key => $value\n";
}
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES   | NO      | NO   | YES        | YES      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=23, args=0, vars=4, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/56_foreach_with_array/second_ex/second_ex.php:1-14
L0 (2):     EXT_STMT
L1 (2):     T4 = FETCH_R (global) string("_GET")
L2 (2):     T5 = FETCH_DIM_R T4 string("p1")
L3 (2):     ASSIGN CV0($b) T5
L4 (5):     EXT_STMT
L5 (5):     T7 = INIT_ARRAY 4 string("bar") string("foo")
L6 (6):     T7 = ADD_ARRAY_ELEMENT string("foo") string("bar")
L7 (7):     T7 = ADD_ARRAY_ELEMENT CV0($b) string("too")
L8 (8):     T7 = ADD_ARRAY_ELEMENT int(100) int(-100)
L9 (8):     ASSIGN CV1($array) T7
L10 (11):   EXT_STMT
L11 (11):   V9 = FE_RESET_R CV1($array) L21
L12 (11):   T10 = FE_FETCH_R V9 CV2($value) L21
L13 (11):   ASSIGN CV3($key) T10
L14 (13):   EXT_STMT
L15 (13):   T13 = ROPE_INIT 4 CV3($key)
L16 (13):   T13 = ROPE_ADD 1 T13 string(" => ")
L17 (13):   T13 = ROPE_ADD 2 T13 CV2($value)
L18 (13):   T12 = ROPE_END 3 T13 string("
")
L19 (13):   ECHO T12
L20 (11):   JMP L12
L21 (11):   FE_FREE V9
L22 (14):   RETURN int(1)
LIVE RANGES:
        7: L6 - L9 (tmp/var)
        9: L12 - L21 (loop)
        13: L15 - L18 (rope)
```

- DISCOVERY:

Adding to array two elements
```bash
cpg.call(".*FE_FETCH_R.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

