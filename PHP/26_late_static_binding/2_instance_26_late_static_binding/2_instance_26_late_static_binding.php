<?php
class A {
    public static function who($b) {
        return "safe";
    }
    public static function test($b) {
        return static::who($b); // Here comes Late Static Bindings
    }
}

class B extends A {
    public static function who($b) {
        return $b;
    }
}

$b = $_GET["p1"]; // source
$a = A::test($b);
echo $a; // sink