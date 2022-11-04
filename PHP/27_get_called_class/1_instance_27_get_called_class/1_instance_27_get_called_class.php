<?php
class A {
    public static function who($b) {
        echo "safe";
    }
    public static function test($b) {
        get_called_class()::who($b);
    }
}

class B extends A {
    public static function who($b) {
        echo $b;
    }
}

$b = $_GET["p1"];
B::test($b);