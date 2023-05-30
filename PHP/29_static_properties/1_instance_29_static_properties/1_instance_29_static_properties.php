<?php
class Foo {
    static $b = 'safe';
    function __construct($b) {
        self::$b = $b;
    }
    function baz() {
        // $b has the input, XSS Vulnerability
        return self::$b;
    }
}
$b = $_GET["p1"]; // source
$ob = new Foo($b);
$a = $ob->baz();
echo $a; // sink