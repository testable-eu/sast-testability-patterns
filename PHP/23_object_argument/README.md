# Pattern: Object Argument

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
$x = new stdClass();
$x->prop = 'abc';

// There is no & for $o
function f ( $o, $b ) {
  $o->prop = $b;
}

$b = $_GET["p1"];
f($x,$b);
// XSS vulnerability, it will print $b
echo $x->prop;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=20, args=0, vars=2, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/25_object_argument/25_object_argument.php:1-13
L0 (2):     EXT_STMT
L1 (2):     V2 = NEW 0 string("stdClass")
L2 (2):     DO_FCALL
L3 (2):     ASSIGN CV0($x) V2
L4 (3):     EXT_STMT
L5 (3):     ASSIGN_OBJ CV0($x) string("prop")
L6 (3):     OP_DATA string("abc")
L7 (10):    EXT_STMT
L8 (10):    T6 = FETCH_R (global) string("_GET")
L9 (10):    T7 = FETCH_DIM_R T6 string("p1")
L10 (10):   ASSIGN CV1($b) T7
L11 (11):   EXT_STMT
L12 (11):   INIT_FCALL 2 128 string("f")
L13 (11):   SEND_VAR CV0($x) 1
L14 (11):   SEND_VAR CV1($b) 2
L15 (11):   DO_FCALL
L16 (13):   EXT_STMT
L17 (13):   T10 = FETCH_OBJ_R CV0($x) string("prop")
L18 (13):   ECHO T10
L19 (13):   RETURN int(1)
LIVE RANGES:
        2: L2 - L3 (new)

f: ; (lines=8, args=2, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/25_object_argument/25_object_argument.php:6-8
L0 (6):     EXT_NOP
L1 (6):     CV0($o) = RECV 1
L2 (6):     CV1($b) = RECV 2
L3 (7):     EXT_STMT
L4 (7):     ASSIGN_OBJ CV0($o) string("prop")
L5 (7):     OP_DATA CV1($b)
L6 (8):     EXT_STMT
L7 (8):     RETURN null
```

- DISCOVERY:

```bash
val G1 = cpg.call("ASSIGN").reachableByFlows(cpg.call.code(".*NEW.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct
val R2 = cpg.call("SEND.*").code(".*CV.*").l
R2.filter{ call => G1.exists{ h => call.argument.order(0).code.l.contains("CV($" + h + ")")} }.size;
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

