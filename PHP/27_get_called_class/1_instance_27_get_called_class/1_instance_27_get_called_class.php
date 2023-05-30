<?php
class A {
    public static function who($b) {
        return "safe";
    }
    public static function test($b) {
        return get_called_class()::who($b);
    }
}

class B extends A {
    public static function who($b) {
        return $b;
    }
}

$b = $_GET["p1"]; // source
$a = B::test($b);
echo $a; // sink