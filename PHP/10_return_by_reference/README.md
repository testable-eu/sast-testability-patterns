# Pattern: Return by Reference

## Category

References

## Definition

[Return by reference](https://www.php.net/manual/en/language.references.return.php) in PHP, when the variable will be referenced to the returned variable from a specific function.

>Returning by reference is useful when you want to use a function to find to which variable a reference should be bound.
>
>If there are more than one return in the function, the variable will be referenced for the first one.

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
class foo {
    public $value = 42;

    public function &getValue() {
        return $this->value;
    }
}

$b = $_GET["p1"];
$obj = new foo;
// $myValue is a reference to $obj->value, which is 42.
$myValue = &$obj->getValue(); 
$obj->value = $b;
// prints the new value of $obj->value, which is the value of $b.
// Here there is XSS vulnerability.
echo $myValue;   
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=17, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/19_return_by_reference/19_return_by_reference.php:1-18
L0 (3):     NOP
L1 (10):    EXT_STMT
L2 (10):    ASSIGN CV0($b) string("input")
L3 (11):    EXT_STMT
L4 (11):    V4 = NEW 0 string("foo")
L5 (11):    DO_FCALL
L6 (11):    ASSIGN CV1($obj) V4
L7 (13):    EXT_STMT
L8 (13):    INIT_METHOD_CALL 0 CV1($obj) string("getValue")
L9 (13):    V7 = DO_FCALL
L10 (13):   ASSIGN_REF (function) CV2($myValue) V7
L11 (14):   EXT_STMT
L12 (14):   ASSIGN_OBJ CV1($obj) string("value")
L13 (14):   OP_DATA CV0($b)
L14 (17):   EXT_STMT
L15 (17):   ECHO CV2($myValue)
L16 (18):   RETURN int(1)
LIVE RANGES:
        4: L5 - L6 (new)

foo::getValue: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/19_return_by_reference/19_return_by_reference.php:5-7
L0 (5):     EXT_NOP
L1 (6):     EXT_STMT
L2 (6):     V0 = FETCH_OBJ_W (ref) THIS string("value")
L3 (6):     RETURN_BY_REF V0
L4 (7):     EXT_STMT
L5 (7):     RETURN_BY_REF (function) null
```

- DISCOVERY:

There is a specific opcode for this type of references called RETURN_BY_REF.

```
cpg.call(".*RETURN_BY_REF.*").argument.code("function").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

I show that in the pattern [simple references](https://gitlab.eurecom.fr/alkasar/static-tools---latex/issues/26), we need to have a table of variables with the references between them. In this pattern, I need first to detect the first return in the function, then do the connection between the variable and the returned variable from the function. This pattern show the complexity of following the references for the static tools, especially the variable in the function should be [static](https://gitlab.eurecom.fr/alkasar/static-tools---latex/issues/20), global or object property. In addition to that, we face the same difficulties of call graph.

```

```



