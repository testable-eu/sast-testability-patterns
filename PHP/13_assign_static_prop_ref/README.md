# Pattern: Assign Static Property by Reference

## Category

Refrences

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
class myclass{
	static $sprop;
};

$y = "abc";
myclass::$sprop = &$y;
$y = $_GET["p1"];
echo myclass::$sprop;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=14, args=0, vars=1, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/122_assign_static_prop_ref/122_assign_static_prop_ref.php:1-10
L0 (3):     NOP
L1 (6):     EXT_STMT
L2 (6):     ASSIGN CV0($y) string("abc")
L3 (7):     EXT_STMT
L4 (7):     ASSIGN_STATIC_PROP_REF string("sprop") string("myclass")
L5 (7):     OP_DATA CV0($y)
L6 (8):     EXT_STMT
L7 (8):     T3 = FETCH_R (global) string("_GET")
L8 (8):     T4 = FETCH_DIM_R T3 string("p1")
L9 (8):     ASSIGN CV0($y) T4
L10 (9):    EXT_STMT
L11 (9):    T6 = FETCH_STATIC_PROP_R string("sprop") string("myclass")
L12 (9):    ECHO T6
L13 (10):   RETURN int(1)
```

- DISCOVERY:

```bash
cpg.call(".*ASSIGN_STATIC_PROP_REF.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

