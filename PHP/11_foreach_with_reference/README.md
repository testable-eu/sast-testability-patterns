# Pattern: Foreach with Reference

## Category

References

## Definition

Foreach is used by high level programming languages to iterate over arrays and objects.

```php
<?php
$arr = array(1,2,3);
foreach($arr as $value){
   echo $value;
}
```

In this example, any change on the variable $value will not change on the array $arr. If we want to keep the changes we have to add a reference.

```php
<?php
$arr = array(1,2,3);
foreach($arr as &$value){
   ...
}
```

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
$arr = array("abc", "def", "ghi");
$a = $_GET["p1"];  // source
foreach ($arr as &$x) { // tarpit
// copy $a for all the elements in the array.
// the changes will be in $x and $arr in the same time.
    $x = $a;
}
// will print the value of $a, there is vulnerability
echo $arr[0]; // sink
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=12, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /tp-framework/testability_patterns/PHP/11_foreach_with_reference/2_instance_11_foreach_with_reference/2_instance_11_foreach_with_reference.php:1-11
L0 (2):     ASSIGN CV0($arr) array(...)
L1 (3):     T4 = FETCH_R (global) string("_GET")
L2 (3):     T5 = FETCH_DIM_R T4 string("p1")
L3 (3):     ASSIGN CV1($a) T5
L4 (4):     V7 = FE_RESET_RW CV0($arr) L8
L5 (4):     FE_FETCH_RW V7 CV2($x) L8
L6 (7):     ASSIGN CV2($x) CV1($a)
L7 (4):     JMP L5
L8 (4):     FE_FREE V7
L9 (10):    T9 = FETCH_DIM_R CV0($arr) int(0)
L10 (10):   ECHO T9
L11 (11):   RETURN int(1)
LIVE RANGES:
        7: L5 - L8 (loop)
```

- DISCOVERY:

```bash
cpg.call(".*FE_FETCH_RW.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

