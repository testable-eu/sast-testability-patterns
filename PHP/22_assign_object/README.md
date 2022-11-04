# Pattern: Assign Object

## Category

Objects

## Definition

## Instances

### Instance 1

- CATEGORY:  S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
class myclass{
   public $b = "safe";
}
$obj1 = new myclass();
$obj1->b = "safe2";
$obj2 = $obj1;
$obj2->b = $_GET["p1"];
// XSS vulnerability
echo $obj1->b;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      |YES   | NO        | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=2, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/24_assign_object/24_assign_object.php:1-10
L0 (3):     NOP
L1 (5):     EXT_STMT
L2 (5):     V2 = NEW 0 string("myclass")
L3 (5):     DO_FCALL
L4 (5):     ASSIGN CV0($obj1) V2
L5 (6):     EXT_STMT
L6 (6):     ASSIGN_OBJ CV0($obj1) string("b")
L7 (6):     OP_DATA string("safe2")
L8 (7):     EXT_STMT
L9 (7):     ASSIGN CV1($obj2) CV0($obj1)
L10 (8):    EXT_STMT
L11 (8):    T8 = FETCH_R (global) string("_GET")
L12 (8):    T9 = FETCH_DIM_R T8 string("p1")
L13 (8):    ASSIGN_OBJ CV1($obj2) string("b")
L14 (8):    OP_DATA T9
L15 (10):   EXT_STMT
L16 (10):   T10 = FETCH_OBJ_R CV0($obj1) string("b")
L17 (10):   ECHO T10
L18 (10):   RETURN int(1)
LIVE RANGES:
        2: L3 - L4 (new)
```

- DISCOVERY:

```bash
val G1 = cpg.call("ASSIGN").reachableByFlows(cpg.call.code(".*NEW.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct
val R1 = cpg.call("ASSIGN").code(".*CV.*CV.*").l
R1.filter{ call => G1.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size;
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

