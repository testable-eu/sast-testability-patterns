# Pattern: Call Overloading

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
class MethodTest
{
    public function __call($name, $arguments)
    {
        foreach($arguments as $arg){
            echo $arg . "\n";
        }
    }
}

$b = $_GET["p1"];
$obj->x = $b;
$obj = new MethodTest;
// Will call the __call() function
// and print the argument $b 
// XSS vulnerability
$obj->runTest('arg1',$b);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=17, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/33_call_overloading/33_call_overloading.php:1-19
L0 (12):    EXT_STMT
L1 (12):    T2 = FETCH_R (global) string("_GET")
L2 (12):    T3 = FETCH_DIM_R T2 string("p1")
L3 (12):    ASSIGN CV0($b) T3
L4 (13):    EXT_STMT
L5 (13):    V5 = NEW 0 string("MethodTest")
L6 (13):    DO_FCALL
L7 (13):    ASSIGN CV1($obj) V5
L8 (14):    EXT_STMT
L9 (14):    ASSIGN_OBJ CV1($obj) string("x")
L10 (14):   OP_DATA CV0($b)
L11 (18):   EXT_STMT
L12 (18):   INIT_METHOD_CALL 2 CV1($obj) string("runTest")
L13 (18):   SEND_VAL_EX string("arg1") 1
L14 (18):   SEND_VAR_EX CV0($b) 2
L15 (18):   DO_FCALL
L16 (19):   RETURN int(1)
LIVE RANGES:
        5: L6 - L7 (new)

MethodTest::__call: ; (lines=13, args=2, vars=3, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/33_call_overloading/33_call_overloading.php:4-9
L0 (4):     EXT_NOP
L1 (4):     CV0($name) = RECV 1
L2 (4):     CV1($arguments) = RECV 2
L3 (6):     EXT_STMT
L4 (6):     V3 = FE_RESET_R CV1($arguments) L10
L5 (6):     FE_FETCH_R V3 CV2($arg) L10
L6 (7):     EXT_STMT
L7 (7):     T4 = CONCAT CV2($arg) string("
")
L8 (7):     ECHO T4
L9 (6):     JMP L5
L10 (6):    FE_FREE V3
L11 (9):    EXT_STMT
L12 (9):    RETURN null
LIVE RANGES:
        3: L5 - L10 (loop)
```

- DISCOVERY:

```bash
def methods1 = cpg.typeDecl.filter{x => x.method.name.l.contains("__call")}.name.l
cpg.call("NEW").argument.filter{x => methods1.contains(x.code.toLowerCase)}.size;
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```


