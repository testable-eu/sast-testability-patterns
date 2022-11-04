# Pattern: New from Variable

## Category

Objects

## Definition

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
class class1{
   public $x;
   public function __construct($y){
      $this->x = y;
   }
   public function printX(){
       echo $this->x;
   }
}
$b = $_GET["p1"];
$t = "class1";
$obj = new $t($b);
$t->printX();
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=17, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/first_ex/first_ex.php:1-14
L0 (3):     NOP
L1 (11):    EXT_STMT
L2 (11):    T3 = FETCH_R (global) string("_GET")
L3 (11):    T4 = FETCH_DIM_R T3 string("p1")
L4 (11):    ASSIGN CV0($b) T4
L5 (12):    EXT_STMT
L6 (12):    ASSIGN CV1($t) string("class1")
L7 (13):    EXT_STMT
L8 (13):    V7 = FETCH_CLASS (exception) CV1($t)
L9 (13):    V8 = NEW 1 V7
L10 (13):   SEND_VAR_EX CV0($b) 1
L11 (13):   DO_FCALL
L12 (13):   ASSIGN CV2($obj) V8
L13 (14):   EXT_STMT
L14 (14):   INIT_METHOD_CALL 0 CV1($t) string("printX")
L15 (14):   DO_FCALL
L16 (14):   RETURN int(1)
LIVE RANGES:
        8: L10 - L12 (new)

class1::__construct: ; (lines=8, args=1, vars=1, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/first_ex/first_ex.php:4-6
L0 (4):     EXT_NOP
L1 (4):     CV0($y) = RECV 1
L2 (5):     EXT_STMT
L3 (5):     T2 = FETCH_CONSTANT (unqualified) string("y")
L4 (5):     ASSIGN_OBJ THIS string("x")
L5 (5):     OP_DATA T2
L6 (6):     EXT_STMT
L7 (6):     RETURN null

class1::printX: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/first_ex/first_ex.php:7-9
L0 (7):     EXT_NOP
L1 (8):     EXT_STMT
L2 (8):     T0 = FETCH_OBJ_R THIS string("x")
L3 (8):     ECHO T0
L4 (9):     EXT_STMT
L5 (9):     RETURN null
```

- DISCOVERY:

```bash
def G3 = cpg.call("ASSIGN").code(".*string.*").argument.order(0).isIdentifier.name.l.distinct
    def R4 = cpg.call("FETCH_CLASS").code(".*CV.*").l
R4.filter{ call => G3.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size;
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

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
class class1{
   public $x;
   public function __construct($y){
      $this->x = y;
   }
   public function printX(){
       echo $this->x;
   }
}
$b = $_GET["p1"];
$t = $_GET["p2"];
$obj = new $t($b);
$t->printX();
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=19, args=0, vars=3, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/second_ex/second_ex.php:1-14
L0 (3):     NOP
L1 (11):    EXT_STMT
L2 (11):    T3 = FETCH_R (global) string("_GET")
L3 (11):    T4 = FETCH_DIM_R T3 string("p1")
L4 (11):    ASSIGN CV0($b) T4
L5 (12):    EXT_STMT
L6 (12):    T6 = FETCH_R (global) string("_GET")
L7 (12):    T7 = FETCH_DIM_R T6 string("p2")
L8 (12):    ASSIGN CV1($t) T7
L9 (13):    EXT_STMT
L10 (13):   V9 = FETCH_CLASS (exception) CV1($t)
L11 (13):   V10 = NEW 1 V9
L12 (13):   SEND_VAR_EX CV0($b) 1
L13 (13):   DO_FCALL
L14 (13):   ASSIGN CV2($obj) V10
L15 (14):   EXT_STMT
L16 (14):   INIT_METHOD_CALL 0 CV1($t) string("printX")
L17 (14):   DO_FCALL
L18 (14):   RETURN int(1)
LIVE RANGES:
        10: L12 - L14 (new)

class1::__construct: ; (lines=8, args=1, vars=1, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/second_ex/second_ex.php:4-6
L0 (4):     EXT_NOP
L1 (4):     CV0($y) = RECV 1
L2 (5):     EXT_STMT
L3 (5):     T2 = FETCH_CONSTANT (unqualified) string("y")
L4 (5):     ASSIGN_OBJ THIS string("x")
L5 (5):     OP_DATA T2
L6 (6):     EXT_STMT
L7 (6):     RETURN null

class1::printX: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/second_ex/second_ex.php:7-9
L0 (7):     EXT_NOP
L1 (8):     EXT_STMT
L2 (8):     T0 = FETCH_OBJ_R THIS string("x")
L3 (8):     ECHO T0
L4 (9):     EXT_STMT
L5 (9):     RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*NEW.*").argument.order(1).code("CV.*|T.*|V.*").location.l
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

### Instance 3

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
class class1{
   public $x;
   public function __construct($y){
      $this->x = y;
   }
   public function printX(){
       echo $this->x;
   }
}
$b = $_GET["p1"];
$bb = $_GET["p2"];
$t = "class".$bb;
$obj = new $t($b);
$t->printX();
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=22, args=0, vars=4, tmps=13)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/third_ex/third_ex.php:1-15
L0 (3):     NOP
L1 (11):    EXT_STMT
L2 (11):    T4 = FETCH_R (global) string("_GET")
L3 (11):    T5 = FETCH_DIM_R T4 string("p1")
L4 (11):    ASSIGN CV0($b) T5
L5 (12):    EXT_STMT
L6 (12):    T7 = FETCH_R (global) string("_GET")
L7 (12):    T8 = FETCH_DIM_R T7 string("p2")
L8 (12):    ASSIGN CV1($bb) T8
L9 (13):    EXT_STMT
L10 (13):   T10 = CONCAT string("class") CV1($bb)
L11 (13):   ASSIGN CV2($t) T10
L12 (14):   EXT_STMT
L13 (14):   V12 = FETCH_CLASS (exception) CV2($t)
L14 (14):   V13 = NEW 1 V12
L15 (14):   SEND_VAR_EX CV0($b) 1
L16 (14):   DO_FCALL
L17 (14):   ASSIGN CV3($obj) V13
L18 (15):   EXT_STMT
L19 (15):   INIT_METHOD_CALL 0 CV2($t) string("printX")
L20 (15):   DO_FCALL
L21 (15):   RETURN int(1)
LIVE RANGES:
        13: L15 - L17 (new)

class1::__construct: ; (lines=8, args=1, vars=1, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/third_ex/third_ex.php:4-6
L0 (4):     EXT_NOP
L1 (4):     CV0($y) = RECV 1
L2 (5):     EXT_STMT
L3 (5):     T2 = FETCH_CONSTANT (unqualified) string("y")
L4 (5):     ASSIGN_OBJ THIS string("x")
L5 (5):     OP_DATA T2
L6 (6):     EXT_STMT
L7 (6):     RETURN null

class1::printX: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/third_ex/third_ex.php:7-9
L0 (7):     EXT_NOP
L1 (8):     EXT_STMT
L2 (8):     T0 = FETCH_OBJ_R THIS string("x")
L3 (8):     ECHO T0
L4 (9):     EXT_STMT
L5 (9):     RETURN null
```

- DISCOVERY:

Finally, searching for INIT_USER_CALL will not discover the call_user_func, to find all of them I use regex to search for "call_user_func".

```bash
val G4 = cpg.call("ASSIGN").reachableByFlows(cpg.call("CONCAT").code(".*CONCAT.*string.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct
def R5 = cpg.call("FETCH_CLASS").code(".*CV.*").l
R5.filter{ call => G4.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size;
    
```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```













































