<?php
class myclass {

    function __construct() {
        $this->b = $_GET['p1']; // source
    }

    function F() {
        $obj2 = new self;
        return $obj2->T();
    }

    function T() {
        return $this->b;
    }
}


$obj = new myclass();
$a = $obj->F();
echo $a; // sink
