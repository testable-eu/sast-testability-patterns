# Pattern: Autoloading Classes

## Category

Objects

## Definition

PHP offers a feature for auto loading the classes instead of including them in each file [Autoloading classes](https://www.php.net/manual/en/language.oop5.autoload.php). It is a function will be called when the class is not exist, then this function will include the correct file for this class.

```
<?php
spl_autoload_register(function ($class_name) {
    include $class_name . '.php';
});

$obj  = new MyClass1();
$obj2 = new MyClass2();
```

In this article [How to use autoloading](https://www.smashingmagazine.com/2015/05/how-to-use-autoloading-and-a-plugin-container-in-wordpress-plugins/), they adopt [PEAR naming convention](https://pear.php.net/manual/en/standards.naming.php) for the class names.

> The gist is that class names are alphabetic characters in StudlyCaps. Each level of the hierarchy is separated with a single underscore. Class names will directly map to the directories in which they are stored.
>
> For example, A class named Simplarity_Plugin would be defined in the file src/Simplarity/Plugin.php.
>
> As you can see with this convention, the autoloader will just replace the underscores with directory separators to locate the class definition.

Finally, it is difficult for the static tool to find the class file.

## Instances

### Instance 1

- CATEGORY:  D2
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
spl_autoload_register(function ($class_name) {
    include './'. $class_name . '.php';
});
$a = $_GET["p1"];
$obj  = new MyClass1($a);
<?php
class MyClass1{
    function __construct($b){
        echo $b;
    }
}
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | YES      | YES        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=15, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/21_autoloading_classes/21_autoloading_classes.php:1-13
L0 (2):     EXT_STMT
L1 (2):     INIT_FCALL 1 96 string("spl_autoload_register")
L2 (2):     T2 = DECLARE_LAMBDA_FUNCTION string("")
L3 (4):     SEND_VAL T2 1
L4 (4):     DO_FCALL
L5 (5):     EXT_STMT
L6 (5):     T4 = FETCH_R (global) string("_GET")
L7 (5):     T5 = FETCH_DIM_R T4 string("p1")
L8 (5):     ASSIGN CV0($a) T5
L9 (6):     EXT_STMT
L10 (6):    V7 = NEW 1 string("MyClass1")
L11 (6):    SEND_VAR_EX CV0($a) 1
L12 (6):    DO_FCALL
L13 (6):    ASSIGN CV1($obj) V7
L14 (13):   RETURN int(1)
LIVE RANGES:
        7: L11 - L13 (new)

{closure}: ; (lines=8, args=1, vars=1, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/21_autoloading_classes/21_autoloading_classes.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($class_name) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     T1 = CONCAT string("./") CV0($class_name)
L4 (3):     T2 = CONCAT T1 string(".php")
L5 (3):     INCLUDE_OR_EVAL (include) T2
L6 (4):     EXT_STMT
L7 (4):     RETURN null

MyClass1::__construct: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/21_autoloading_classes/21_autoloading_classes.php:9-11
L0 (9):     EXT_NOP
L1 (9):     CV0($b) = RECV 1
L2 (10):    EXT_STMT
L3 (10):    ECHO CV0($b)
L4 (11):    EXT_STMT
L5 (11):    RETURN null
```

- DISCOVERY:

```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("spl_autoload_register").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

The solution for this problem is to search for the name of the class in the whole project, then include the file. If there is more than one class with the same name, we have to do over-approximation by trying all the possible classes. In addition to that, we have to be careful to call the closure in spl_autoload_register every time we create an object because it could have a vulnerability.

```

```



