# Pattern:  Object Callable

## Category

Objects

## Definition

These operation will throw an error if the variables are string.

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
class Foo
{
    static $b = 'safe';
    function __construct($b){
        self::$b = $b;
    }
    function baz()
    {
        // $b has the input, XSS Vulnerability
        echo self::$b;
    }
}
$b = $_GET["p1"];
//it will create new object and call the function baz.
array(new Foo($b), "baz")();
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO | NO | NO | NO | NO | NO | YES |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=14, args=0, vars=1, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/first_ex/first_ex.php:1-16
L0 (4):     NOP
L1 (14):    EXT_STMT
L2 (14):    T1 = FETCH_R (global) string("_GET")
L3 (14):    T2 = FETCH_DIM_R T1 string("p1")
L4 (14):    ASSIGN CV0($b) T2
L5 (16):    EXT_STMT
L6 (16):    V4 = NEW 1 string("Foo")
L7 (16):    SEND_VAR_EX CV0($b) 1
L8 (16):    DO_FCALL
L9 (16):    T6 = INIT_ARRAY 2 (packed) V4 NEXT
L10 (16):   T6 = ADD_ARRAY_ELEMENT string("baz") NEXT
L11 (16):   INIT_DYNAMIC_CALL 0 T6
L12 (16):   DO_FCALL
L13 (16):   RETURN int(1)
LIVE RANGES:
        4: L7 - L9 (new)
        6: L10 - L11 (tmp/var)

Foo::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/first_ex/first_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_STATIC_PROP string("b")
L4 (6):     OP_DATA CV0($b)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

Foo::baz: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/first_ex/first_ex.php:8-12
L0 (8):     EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    T0 = FETCH_STATIC_PROP_R string("b") (self) (exception)
L3 (11):    ECHO T0
L4 (12):    EXT_STMT
L5 (12):    RETURN null
```

- DISCOVERY:

```bash
cpg.call("INIT_DYNAMIC_CALL").code(".*true.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```php
<?php
class Foo
{
    static $b = 'safe';
    function __construct($b){
        self::$b = $b;
    }
    function baz()
    {
        // $b has the input, XSS Vulnerability
        echo self::$b;
    }
}
$b = $_GET["p1"];
//it will create new object and call the function baz.
$obj = new Foo($b);
$obj->baz();
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
class Foo
{
    static $b = 'safe';
    function __construct($b){
        self::$b = $b;
    }
    function baz()
    {
        // $b has the input, XSS Vulnerability
        echo self::$b;
    }
}
$b = $_GET["p1"];
$c = $_GET["p1"];
//it will create new object and call the function baz.
array(new $c($b), $b)();
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=2, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/second_ex/second_ex.php:1-17
L0 (4):     NOP
L1 (14):    EXT_STMT
L2 (14):    T2 = FETCH_R (global) string("_GET")
L3 (14):    T3 = FETCH_DIM_R T2 string("p1")
L4 (14):    ASSIGN CV0($b) T3
L5 (15):    EXT_STMT
L6 (15):    T5 = FETCH_R (global) string("_GET")
L7 (15):    T6 = FETCH_DIM_R T5 string("p1")
L8 (15):    ASSIGN CV1($c) T6
L9 (17):    EXT_STMT
L10 (17):   V8 = FETCH_CLASS (exception) CV1($c)
L11 (17):   V9 = NEW 1 V8
L12 (17):   SEND_VAR_EX CV0($b) 1
L13 (17):   DO_FCALL
L14 (17):   T11 = INIT_ARRAY 2 (packed) V9 NEXT
L15 (17):   T11 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L16 (17):   INIT_DYNAMIC_CALL 0 T11
L17 (17):   DO_FCALL
L18 (17):   RETURN int(1)
LIVE RANGES:
        9: L12 - L14 (new)
        11: L15 - L16 (tmp/var)

Foo::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/second_ex/second_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_STATIC_PROP string("b")
L4 (6):     OP_DATA CV0($b)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

Foo::baz: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/second_ex/second_ex.php:8-12
L0 (8):     EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    T0 = FETCH_STATIC_PROP_R string("b") (self) (exception)
L3 (11):    ECHO T0
L4 (12):    EXT_STMT
L5 (12):    RETURN null
```

- DISCOVERY:

```bash
cpg.call("INIT_DYNAMIC_CALL").code(".*true.*").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 
