In PHP it is not possible to define more than one function with the same name, even if the number of arguments are different between the two functions.

```php
<?php
function F($x) {
    echo $x;
}
function F($x,$y ) {
    echo $x;
    echo $y;
}
F(2,3);// FATAL ERROR: CANNOT RE-DECLARE F
```

In addition to that, It is possible to send arguments to a function more than what it will be received. 
Then the function [func_get_args](https://www.php.net/manual/en/function.func-get-args.php) will return an array with the rest of the arguments. 
In PHP7 there is [Variadic](https://www.phptutorial.net/php-tutorial/php-variadic-functions/) which begin to be used instead of the function func_get_args.

```php
<?php
function F($x) {
    echo $x; // 3
    var_dump(func_get_args()); // 5, 7 , 11
}
F(3,5,7,11);
```

The problem when the scanners are not processing the received arguments with this function.
The scanners can solve this pattern, there is no difficulty to receive the array of the arguments from the function. 
The problem that this feature is only in PHP and it is missed with many of the testing tools. 