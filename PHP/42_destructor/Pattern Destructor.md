# Pattern: Destructor

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
class BaseClass {

    public $var = 'safe';

    function __construct($b) {
        print "In BaseClass constructor\n";
        $this->var = $b;
    }
    function __destruct() {
        print "Destroying " . __CLASS__ . "\n";
        echo $this->var;
    }
}

$b = $_GET["p1"];
// In BaseClass constructor
// There is XSS when the object will be destroyed
$obj = new BaseClass($b);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=11, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/28_destructor/28_destructor.php:1-19
L0 (4):     NOP
L1 (16):    EXT_STMT
L2 (16):    T2 = FETCH_R (global) string("_GET")
L3 (16):    T3 = FETCH_DIM_R T2 string("p1")
L4 (16):    ASSIGN CV0($b) T3
L5 (19):    EXT_STMT
L6 (19):    V5 = NEW 1 string("BaseClass")
L7 (19):    SEND_VAR_EX CV0($b) 1
L8 (19):    DO_FCALL
L9 (19):    ASSIGN CV1($obj) V5
L10 (19):   RETURN int(1)
LIVE RANGES:
        5: L7 - L9 (new)

BaseClass::__construct: ; (lines=9, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/28_destructor/28_destructor.php:6-9
L0 (6):     EXT_NOP
L1 (6):     CV0($b) = RECV 1
L2 (7):     EXT_STMT
L3 (7):     ECHO string("In BaseClass constructor
")
L4 (8):     EXT_STMT
L5 (8):     ASSIGN_OBJ THIS string("var")
L6 (8):     OP_DATA CV0($b)
L7 (9):     EXT_STMT
L8 (9):     RETURN null

BaseClass::__destruct: ; (lines=8, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/28_destructor/28_destructor.php:10-13
L0 (10):    EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    ECHO string("Destroying BaseClass
")
L3 (12):    EXT_STMT
L4 (12):    T0 = FETCH_OBJ_R THIS string("var")
L5 (12):    ECHO T0
L6 (13):    EXT_STMT
L7 (13):    RETURN null
```

- DISCOVERY:

```bash
def methods8 = cpg.typeDecl.filter{x => x.method.name.l.contains("__destruct")}.name.l
cpg.call("NEW").argument.filter{x => methods8.contains(x.code.toLowerCase)}.size
    
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

