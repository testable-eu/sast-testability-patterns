# Pattern: Get Arguments

## Category

Functions

## Definition

In PHP it is not possible to define more than one function with the same name, even if the number of arguments are different between the two functions. 

```php
<?php
function F($x){
   echo $x;
}
function F($x,$y){
   echo $x;
   echo $y;
}
F(2,3);

// FATAL ERROR: CANNOT RE-DECLARE F
```

In addition to that, It is possible to send arguments to a function more than what it will be received. Then the function [func_get_args](https://www.php.net/manual/en/function.func-get-args.php) will return an array with the rest of the arguments. In PHP7 there is [Variadic](https://gitlab.eurecom.fr/alkasar/static-tools---latex/issues/18) which begin to be used instead of the function func_get_args.

```php
<?php
function F($x){
   echo $x; // 3
   var_dump(func_get_args()); // 5, 7 , 11
}
F(3,5,7,11);
```

The problem when the scanners are not processing the received arguments with this function.

The scanners can solve this pattern, there is no difficulty to receive the array of the arguments from the function. The problem that this feature is only in PHP and it is missed with many of the testing tools. 

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
function sum() {
    // it will print all the parameters
    // XSS vulnerability with the last element $b
    foreach (func_get_args() as $n) {
        echo $n;
    }
}

$b = $_GET["p1"];
sum(1, 2, 3, $b);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | NO      | NO   | NO        | NO      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=12, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/12_get_arguments/12_get_arguments.php:1-11
L0 (10):    EXT_STMT
L1 (10):    T1 = FETCH_R (global) string("_GET")
L2 (10):    T2 = FETCH_DIM_R T1 string("p1")
L3 (10):    ASSIGN CV0($b) T2
L4 (11):    EXT_STMT
L5 (11):    INIT_FCALL 4 192 string("sum")
L6 (11):    SEND_VAL int(1) 1
L7 (11):    SEND_VAL int(2) 2
L8 (11):    SEND_VAL int(3) 3
L9 (11):    SEND_VAR CV0($b) 4
L10 (11):   DO_FCALL
L11 (11):   RETURN int(1)

sum: ; (lines=11, args=0, vars=1, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/12_get_arguments/12_get_arguments.php:2-8
L0 (2):     EXT_NOP
L1 (5):     EXT_STMT
L2 (5):     T1 = FUNC_GET_ARGS
L3 (5):     V2 = FE_RESET_R T1 L8
L4 (5):     FE_FETCH_R V2 CV0($n) L8
L5 (6):     EXT_STMT
L6 (6):     ECHO CV0($n)
L7 (5):     JMP L4
L8 (5):     FE_FREE V2
L9 (8):     EXT_STMT
L10 (8):    RETURN null
LIVE RANGES:
        2: L4 - L8 (loop)
```

- DISCOVERY:

I can find the pattern by searching for the name of the function (func_get_args) as keyword in regex. While in Opcode there is a special opcode for this function FUNC_GET_ARGS.

```bash
cpg.call(".*FUNC_GET_ARGS.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```
