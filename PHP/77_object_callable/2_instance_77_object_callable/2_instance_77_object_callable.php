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
$c = $_GET["p1"];
//it will create new object and call the function baz.
array(new $c($b), $b)();