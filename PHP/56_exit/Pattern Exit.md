# Pattern: Exit

## Category

Exit

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
    $a = $_GET["p1"];
    exit($a);
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | YES     | YES  | YES       | NO      | NO        | YES     |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=7, args=0, vars=1, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/108_exit/108_exit.php:1-5
L0 (2):     EXT_STMT
L1 (2):     T1 = FETCH_R (global) string("_GET")
L2 (2):     T2 = FETCH_DIM_R T1 string("p1")
L3 (2):     ASSIGN CV0($a) T2
L4 (3):     EXT_STMT
L5 (3):     EXIT CV0($a)
L6 (5):     RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*EXIT.*").argument.code("CV.*|T.*|V.*").location.l
```

- PRECONDITIONS:
  1.
- TRANSFORMATION: 

```
```

