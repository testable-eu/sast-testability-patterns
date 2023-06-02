<?php
class foo {
    public $value = 42;

    public function &getValue() {
        return $this->value;
    }
}

$a = $_GET["p1"]; // source
$obj = new foo;
// $b is a reference to $obj->value, which is 42.
$b = &$obj->getValue(); 
$obj->value = $a;
// prints the new value of $obj->value, which is the source $a (XSS)
echo $b;  // sink
