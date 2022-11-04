# Pattern: Reference Argument

## Category

References

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
function foo(&$var,$input){
    $var = $input;
}

$b = $_GET["p1"];
// foo will copy the $b in $a
foo($a,$b);
// XSS, will print the value of $b
echo $a;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=12, args=0, vars=2, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/18_reference_argument/18_reference_argument.php:1-10
L0 (6):     EXT_STMT
L1 (6):     T2 = FETCH_R (global) string("_GET")
L2 (6):     T3 = FETCH_DIM_R T2 string("p1")
L3 (6):     ASSIGN CV0($b) T3
L4 (8):     EXT_STMT
L5 (8):     INIT_FCALL 2 128 string("foo")
L6 (8):     SEND_REF CV1($a) 1
L7 (8):     SEND_VAR CV0($b) 2
L8 (8):     DO_FCALL
L9 (10):    EXT_STMT
L10 (10):   ECHO CV1($a)
L11 (10):   RETURN int(1)

foo: ; (lines=7, args=2, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/18_reference_argument/18_reference_argument.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($var) = RECV 1
L2 (2):     CV1($input) = RECV 2
L3 (3):     EXT_STMT
L4 (3):     ASSIGN CV0($var) CV1($input)
L5 (4):     EXT_STMT
L6 (4):     RETURN null
```

- DISCOVERY:

```bash
 cpg.call(".*SEND_REF.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

