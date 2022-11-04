# Pattern: Unset Overloading

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

    public function __get($name){
        echo "Getting".$this->x;
        return $this->var;
    }

    public function setx($b){
        $this->x = $b;
    }

    public function __unset($name){
        echo "Unsetting '$this->x'\n";
    }
}

$b = $_GET["p1"];
$obj = new PropertyTest;
$obj->var = $b;
$obj->setx($b);
// will call __unset() function, XSS vulnerability
unset($obj->x);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/32_unset_overloading/32_unset_overloading.php:1-25
L0 (4):     NOP
L1 (20):    EXT_STMT
L2 (20):    T2 = FETCH_R (global) string("_GET")
L3 (20):    T3 = FETCH_DIM_R T2 string("p1")
L4 (20):    ASSIGN CV0($b) T3
L5 (21):    EXT_STMT
L6 (21):    V5 = NEW 0 string("PropertyTest")
L7 (21):    DO_FCALL
L8 (21):    ASSIGN CV1($obj) V5
L9 (22):    EXT_STMT
L10 (22):   ASSIGN_OBJ CV1($obj) string("var")
L11 (22):   OP_DATA CV0($b)
L12 (23):   EXT_STMT
L13 (23):   INIT_METHOD_CALL 1 CV1($obj) string("setx")
L14 (23):   SEND_VAR_EX CV0($b) 1
L15 (23):   DO_FCALL
L16 (25):   EXT_STMT
L17 (25):   UNSET_OBJ CV1($obj) string("x")
L18 (25):   RETURN int(1)
LIVE RANGES:
        5: L7 - L8 (new)

PropertyTest::__get: ; (lines=11, args=1, vars=1, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/32_unset_overloading/32_unset_overloading.php:6-9
L0 (6):     EXT_NOP
L1 (6):     CV0($name) = RECV 1
L2 (7):     EXT_STMT
L3 (7):     T1 = FETCH_OBJ_R THIS string("x")
L4 (7):     T2 = CONCAT string("Getting") T1
L5 (7):     ECHO T2
L6 (8):     EXT_STMT
L7 (8):     T3 = FETCH_OBJ_R THIS string("var")
L8 (8):     RETURN T3
L9 (9):     EXT_STMT
L10 (9):    RETURN null

PropertyTest::setx: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/32_unset_overloading/32_unset_overloading.php:11-13
L0 (11):    EXT_NOP
L1 (11):    CV0($b) = RECV 1
L2 (12):    EXT_STMT
L3 (12):    ASSIGN_OBJ THIS string("x")
L4 (12):    OP_DATA CV0($b)
L5 (13):    EXT_STMT
L6 (13):    RETURN null

PropertyTest::__unset: ; (lines=10, args=1, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/32_unset_overloading/32_unset_overloading.php:15-17
L0 (15):    EXT_NOP
L1 (15):    CV0($name) = RECV 1
L2 (16):    EXT_STMT
L3 (16):    T3 = ROPE_INIT 3 string("Unsetting '")
L4 (16):    T1 = FETCH_OBJ_R THIS string("x")
L5 (16):    T3 = ROPE_ADD 1 T3 T1
L6 (16):    T2 = ROPE_END 2 T3 string("'
")
L7 (16):    ECHO T2
L8 (17):    EXT_STMT
L9 (17):    RETURN null
LIVE RANGES:
        3: L3 - L6 (rope)
```

- DISCOVERY:

```bash
def methods1 = cpg.typeDecl.filter{x => x.method.name.l.contains("__unset")}.name.l
cpg.call("NEW").argument.filter{x => methods1.contains(x.code.toLowerCase)}.size;
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```



