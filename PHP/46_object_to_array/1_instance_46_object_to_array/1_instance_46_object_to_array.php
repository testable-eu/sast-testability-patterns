<?php
class A {
    public $x = 'safe';
    public $y = 'safe';
    
    function __construct($b) {
        $this->y = $b;
    }
}
$b = $_GET["p1"]; // source
$a = new A($b);
// object to array
$arr = (array) $a;
// print the property $b in the object
// XSS vulnerability
echo $arr['y']; // sink