<?php
class Foo
{
    static $b = 'safe';
    function __construct($b){
        self::$b = $b;
    }
    function baz()
    {
        // $b has the input, XSS Vulnerability
        echo self::$b;
    }
}
$b = $_GET["p1"];
$ob = new Foo($b);
$ob->baz();