<?php
class Foo {
    static $b = 'safe';
    function __construct($b) {
        self::$b = $b;
    }
    static function baz() {
        // $b has the input, XSS Vulnerability
        return self::$b;
    }
}
Foo::$b = $_GET["p1"]; // source
$a = Foo::baz();
echo $a; // sink
