# Pattern: ToString and Echo Object

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
    public function __construct($foo){
        $this->foo = $foo;
    }

    public function __toString(){
        return $this->foo;
    }
}

$b = $_GET["p1"];
$class = new TestClass($b);
// XSS vulnerability, will print the input $b
echo $class;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=13, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/34_tostring_echo_object/34_tostring_echo_object.php:1-17
L0 (4):     NOP
L1 (14):    EXT_STMT
L2 (14):    T2 = FETCH_R (global) string("_GET")
L3 (14):    T3 = FETCH_DIM_R T2 string("p1")
L4 (14):    ASSIGN CV0($b) T3
L5 (15):    EXT_STMT
L6 (15):    V5 = NEW 1 string("TestClass")
L7 (15):    SEND_VAR_EX CV0($b) 1
L8 (15):    DO_FCALL
L9 (15):    ASSIGN CV1($class) V5
L10 (17):   EXT_STMT
L11 (17):   ECHO CV1($class)
L12 (17):   RETURN int(1)
LIVE RANGES:
        5: L7 - L9 (new)

TestClass::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/34_tostring_echo_object/34_tostring_echo_object.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($foo) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_OBJ THIS string("foo")
L4 (6):     OP_DATA CV0($foo)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

TestClass::__toString: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/34_tostring_echo_object/34_tostring_echo_object.php:9-11
L0 (9):     EXT_NOP
L1 (10):    EXT_STMT
L2 (10):    T0 = FETCH_OBJ_R THIS string("foo")
L3 (10):    RETURN T0
L4 (11):    EXT_STMT
L5 (11):    RETURN null
```

- DISCOVERY:


```bash
def methods9 = cpg.typeDecl.filter{x => x.method.name.l.contains("__tostring")}.name.l
cpg.call("NEW").argument.filter{x => methods9.contains(x.code.toLowerCase)}.size
    
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

Call the toString function manually.

```

```



