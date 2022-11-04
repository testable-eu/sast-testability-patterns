# Pattern: Isset Overloading

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
class PropertyTest
{
    private $x = 'safe';

    public function __get($name)
    {
        echo "Getting ".$this->x;
        return $this->x;
    }

    public function __isset($name)
    {
        echo "Is '$this->x' set?\n";
        return true;
    }

    public function setx($b){
        $this->x = $b;
    }
}

$b = $_GET["p1"];
$obj = new PropertyTest;
$obj->setx($b);

// XSS vulnerability in the function __isset()
if(isset($obj->x)){
    echo "isset function \n";
}

//Two XSS vulnerabilities
// in functions __isset() and __get()
if(!empty($obj->x)){
    echo "empty function \n";
}
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=25, args=0, vars=2, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/31_isset_overloading/31_isset_overloading.php:1-36
L0 (4):     NOP
L1 (23):    EXT_STMT
L2 (23):    T2 = FETCH_R (global) string("_GET")
L3 (23):    T3 = FETCH_DIM_R T2 string("p1")
L4 (23):    ASSIGN CV0($b) T3
L5 (24):    EXT_STMT
L6 (24):    V5 = NEW 0 string("PropertyTest")
L7 (24):    DO_FCALL
L8 (24):    ASSIGN CV1($obj) V5
L9 (25):    EXT_STMT
L10 (25):   INIT_METHOD_CALL 1 CV1($obj) string("setx")
L11 (25):   SEND_VAR_EX CV0($b) 1
L12 (25):   DO_FCALL
L13 (28):   EXT_STMT
L14 (28):   T9 = ISSET_ISEMPTY_PROP_OBJ (isset) CV1($obj) string("x")
L15 (28):   JMPZ T9 L18
L16 (29):   EXT_STMT
L17 (29):   ECHO string("isset function 
")
L18 (34):   EXT_STMT
L19 (34):   T10 = ISSET_ISEMPTY_PROP_OBJ (empty) CV1($obj) string("x")
L20 (34):   T11 = BOOL_NOT T10
L21 (34):   JMPZ T11 L24
L22 (35):   EXT_STMT
L23 (35):   ECHO string("empty function 
")
L24 (36):   RETURN int(1)
LIVE RANGES:
        5: L7 - L8 (new)

PropertyTest::__get: ; (lines=11, args=1, vars=1, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/31_isset_overloading/31_isset_overloading.php:6-10
L0 (6):     EXT_NOP
L1 (6):     CV0($name) = RECV 1
L2 (8):     EXT_STMT
L3 (8):     T1 = FETCH_OBJ_R THIS string("x")
L4 (8):     T2 = CONCAT string("Getting ") T1
L5 (8):     ECHO T2
L6 (9):     EXT_STMT
L7 (9):     T3 = FETCH_OBJ_R THIS string("x")
L8 (9):     RETURN T3
L9 (10):    EXT_STMT
L10 (10):   RETURN null

PropertyTest::__isset: ; (lines=12, args=1, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/31_isset_overloading/31_isset_overloading.php:12-16
L0 (12):    EXT_NOP
L1 (12):    CV0($name) = RECV 1
L2 (14):    EXT_STMT
L3 (14):    T3 = ROPE_INIT 3 string("Is '")
L4 (14):    T1 = FETCH_OBJ_R THIS string("x")
L5 (14):    T3 = ROPE_ADD 1 T3 T1
L6 (14):    T2 = ROPE_END 2 T3 string("' set?
")
L7 (14):    ECHO T2
L8 (15):    EXT_STMT
L9 (15):    RETURN bool(true)
L10 (16):   EXT_STMT
L11 (16):   RETURN null
LIVE RANGES:
        3: L3 - L6 (rope)

PropertyTest::setx: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/31_isset_overloading/31_isset_overloading.php:18-20
L0 (18):    EXT_NOP
L1 (18):    CV0($b) = RECV 1
L2 (19):    EXT_STMT
L3 (19):    ASSIGN_OBJ THIS string("x")
L4 (19):    OP_DATA CV0($b)
L5 (20):    EXT_STMT
L6 (20):    RETURN null
```

- DISCOVERY:

```bash
def methods1 = cpg.typeDecl.filter{x => x.method.name.l.contains("__isset")}.name.l
cpg.call("NEW").argument.filter{x => methods1.contains(x.code.toLowerCase)}.size;
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

