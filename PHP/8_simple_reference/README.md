# Pattern: Simple Reference

## Category

References

## Definition

[References](https://www.php.net/manual/en/language.references.whatare.php) in PHP.

>References in PHP are a means to access the same variable content by different names. They are not like C pointers; for instance, you cannot perform pointer arithmetic using them, they are not actual memory addresses, and so on.
>
>PHP offers assign by reference, this means that the new variable simply references the original variable. Changes to the new variable affect the original, and vice versa. This assign is a challenge for the security scanners because they have to follow both of the variables and when one of them will change the other one have to change also.

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
$a = $_GET["p1"];
$foo = 'Bob';
$bar = &$foo;
$bar = $a;
// $foo will have the value of $a (XSS)
echo $foo;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=13, args=0, vars=3, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/17_simple_reference/17_simple_reference.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($a) T4
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($foo) string("Bob")
L6 (4):     EXT_STMT
L7 (4):     ASSIGN_REF CV2($bar) CV1($foo)
L8 (5):     EXT_STMT
L9 (5):     ASSIGN CV2($bar) CV0($a)
L10 (7):    EXT_STMT
L11 (7):    ECHO CV1($foo)
L12 (7):    RETURN int(1)
```

- DISCOVERY:

It is not possible to find the pattern with regex, but with opcode I can search for the pattern by the opcode ASSIGN_REF.

```
cpg.call(".*ASSIGN_REF.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: T1

The best solution is to save a table of all the variables and the references between the them. Every time there is a change of one of the variables I check the table and apply the changes on the related variables.

```

```



