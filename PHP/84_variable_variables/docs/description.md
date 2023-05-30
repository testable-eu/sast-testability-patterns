PHP allows for [variable variables](https://www.php.net/manual/en/language.variables.variable.php). This makes it possible that the variable name can be set dynamically, using the `$` operator.

```php
$a = "x";
$b = "a";
$c = "b";
$x = "c";

echo $a;        // outputs "x"
echo $$a;       // outputs "c"
echo $$$a;      // outputs "b"
echo $$$$a;     // outputs "a"
echo $$$$$a;    // outputs "x"
```