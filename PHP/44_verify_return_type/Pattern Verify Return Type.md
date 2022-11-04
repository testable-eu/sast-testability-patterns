# Pattern: Verify Return Type 

## Category

Objects

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
class TestClass
{
    public $foo;
    public $doo = 'safe';
    public function __construct($foo){
        $this->foo = $foo;
    }

    public function __toString(){
        echo 'XSS: ' . $this->foo;
        return $this->foo;
    }
}

// will call the function __toString(), XSS vulnerability
function F(string $c){
    echo 'message';
}

$b = $_GET["p1"];
$c = new TestClass($b);
F($c);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=16, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/first_ex/first_ex.php:1-23
L0 (4):     NOP
L1 (5):     NOP
L2 (21):    EXT_STMT
L3 (21):    T2 = FETCH_R (global) string("_GET")
L4 (21):    T3 = FETCH_DIM_R T2 string("p1")
L5 (21):    ASSIGN CV0($b) T3
L6 (22):    EXT_STMT
L7 (22):    V5 = NEW 1 string("TestClass")
L8 (22):    SEND_VAR_EX CV0($b) 1
L9 (22):    DO_FCALL
L10 (22):   ASSIGN CV1($c) V5
L11 (23):   EXT_STMT
L12 (23):   INIT_FCALL 1 96 string("f")
L13 (23):   SEND_VAR CV1($c) 1
L14 (23):   DO_FCALL
L15 (23):   RETURN int(1)
LIVE RANGES:
        5: L8 - L10 (new)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/first_ex/first_ex.php:17-19
L0 (17):    EXT_NOP
L1 (17):    CV0($c) = RECV 1
L2 (18):    EXT_STMT
L3 (18):    ECHO string("message")
L4 (19):    EXT_STMT
L5 (19):    RETURN null

TestClass::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/first_ex/first_ex.php:6-8
L0 (6):     EXT_NOP
L1 (6):     CV0($foo) = RECV 1
L2 (7):     EXT_STMT
L3 (7):     ASSIGN_OBJ THIS string("foo")
L4 (7):     OP_DATA CV0($foo)
L5 (8):     EXT_STMT
L6 (8):     RETURN null

TestClass::__toString: ; (lines=10, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/first_ex/first_ex.php:10-13
L0 (10):    EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    T0 = FETCH_OBJ_R THIS string("foo")
L3 (11):    T1 = CONCAT string("XSS: ") T0
L4 (11):    ECHO T1
L5 (12):    EXT_STMT
L6 (12):    T2 = FETCH_OBJ_R THIS string("foo")
L7 (12):    RETURN T2
L8 (13):    EXT_STMT
L9 (13):    RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*VERIFY_RETURN_TYPE.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

Call the toString function manually.

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
class TestClass
{
    public $foo;
    public function __construct($foo){
        $this->foo = $foo;
    }

    public function __toString(){
        echo 'XSS: ' . $this->foo;
        return $this->foo;
    }
}

// will call the function __toString(), XSS vulnerability
function F($b):string{
    $class = new TestClass($b);
    return $class;
}
$b = $_GET["p1"];
// will print string
F($b);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | YES     | NO       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=10, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/second_ex/second_ex.php:1-22
L0 (4):     NOP
L1 (20):    EXT_STMT
L2 (20):    T1 = FETCH_R (global) string("_GET")
L3 (20):    T2 = FETCH_DIM_R T1 string("p1")
L4 (20):    ASSIGN CV0($b) T2
L5 (22):    EXT_STMT
L6 (22):    INIT_FCALL 1 160 string("f")
L7 (22):    SEND_VAR CV0($b) 1
L8 (22):    DO_FCALL
L9 (22):    RETURN int(1)

F: ; (lines=13, args=1, vars=2, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/second_ex/second_ex.php:16-19
L0 (16):    EXT_NOP
L1 (16):    CV0($b) = RECV 1
L2 (17):    EXT_STMT
L3 (17):    V2 = NEW 1 string("TestClass")
L4 (17):    SEND_VAR_EX CV0($b) 1
L5 (17):    DO_FCALL
L6 (17):    ASSIGN CV1($class) V2
L7 (18):    EXT_STMT
L8 (18):    VERIFY_RETURN_TYPE CV1($class)
L9 (18):    RETURN CV1($class)
L10 (19):   EXT_STMT
L11 (19):   VERIFY_RETURN_TYPE
L12 (19):   RETURN null
LIVE RANGES:
        2: L4 - L6 (new)

TestClass::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/second_ex/second_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($foo) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_OBJ THIS string("foo")
L4 (6):     OP_DATA CV0($foo)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

TestClass::__toString: ; (lines=10, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/second_ex/second_ex.php:9-12
L0 (9):     EXT_NOP
L1 (10):    EXT_STMT
L2 (10):    T0 = FETCH_OBJ_R THIS string("foo")
L3 (10):    T1 = CONCAT string("XSS: ") T0
L4 (10):    ECHO T1
L5 (11):    EXT_STMT
L6 (11):    T2 = FETCH_OBJ_R THIS string("foo")
L7 (11):    RETURN T2
L8 (12):    EXT_STMT
L9 (12):    RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*VERIFY_RETURN_TYPE.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

Call the toString function manually.

```php

```

