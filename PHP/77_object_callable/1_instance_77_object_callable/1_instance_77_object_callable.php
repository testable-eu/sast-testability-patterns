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
//it will create new object and call the function baz.
$a = array(new Foo($b), "baz")(); // tarpit
// $a has the input, XSS Vulnerability
echo $a; // sink