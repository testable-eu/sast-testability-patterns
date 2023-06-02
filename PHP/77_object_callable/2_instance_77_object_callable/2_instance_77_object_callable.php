<?php
class Foo {
    static $x = 'safe';
    function __construct($b) {
        self::$x = $b;
    }
    function baz() {
        return self::$x;
    }
}
$b = $_GET["p1"]; // source
$c = $_GET["p1"];
//it will create new object and call the function baz.
$a = array(new $c($b), "baz")();
// $a has the input, XSS Vulnerability
echo $a; // sink