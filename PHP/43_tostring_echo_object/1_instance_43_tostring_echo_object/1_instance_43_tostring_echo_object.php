<?php
class TestClass
{
    public $foo;
    public function __construct($foo){
        $this->foo = $foo;
    }

    public function __toString(){
        return $this->foo;
    }
}

$b = $_GET["p1"];
$class = new TestClass($b);
// XSS vulnerability, will print the input $b
echo $class;