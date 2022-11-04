# Pattern: Serialize and Unserialize

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
  class A {
      public $one = 1;

      function __construct($b){
        $this->one = $b;
      }
    
      public function show_one() {
          echo $this->one;
      }
  }
  
$b = $_GET["p1"];
$a = new A($b);
$s = serialize($a);
$h = unserialize($s);
// will print $b, XSS vulnerability
$h->show_one();
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO  | NO      | NO   | YES       | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=24, args=0, vars=4, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/38_serialize_unserialize/38_serialize_unserialize.php:1-19
L0 (3):     NOP
L1 (14):    EXT_STMT
L2 (14):    T4 = FETCH_R (global) string("_GET")
L3 (14):    T5 = FETCH_DIM_R T4 string("p1")
L4 (14):    ASSIGN CV0($b) T5
L5 (15):    EXT_STMT
L6 (15):    V7 = NEW 1 string("A")
L7 (15):    SEND_VAR_EX CV0($b) 1
L8 (15):    DO_FCALL
L9 (15):    ASSIGN CV1($a) V7
L10 (16):   EXT_STMT
L11 (16):   INIT_FCALL 1 96 string("serialize")
L12 (16):   SEND_VAR CV1($a) 1
L13 (16):   V10 = DO_FCALL
L14 (16):   ASSIGN CV2($s) V10
L15 (17):   EXT_STMT
L16 (17):   INIT_FCALL 1 96 string("unserialize")
L17 (17):   SEND_VAR CV2($s) 1
L18 (17):   V12 = DO_FCALL
L19 (17):   ASSIGN CV3($h) V12
L20 (19):   EXT_STMT
L21 (19):   INIT_METHOD_CALL 0 CV3($h) string("show_one")
L22 (19):   DO_FCALL
L23 (19):   RETURN int(1)
LIVE RANGES:
        7: L7 - L9 (new)

A::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/38_serialize_unserialize/38_serialize_unserialize.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_OBJ THIS string("one")
L4 (6):     OP_DATA CV0($b)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

A::show_one: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/38_serialize_unserialize/38_serialize_unserialize.php:9-11
L0 (9):     EXT_NOP
L1 (10):    EXT_STMT
L2 (10):    T0 = FETCH_OBJ_R THIS string("one")
L3 (10):    ECHO T0
L4 (11):    EXT_STMT
L5 (11):    RETURN null
```

- DISCOVERY:

```bash
cpg.call("INIT_FCALL").argument.order(2).code("serialize|unserialize").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

