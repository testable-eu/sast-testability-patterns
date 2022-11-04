<?php
class TestClass
{
    public $foo;
    public function __construct($foo){
        $this->foo = $foo;
    }

    public function __toString(){
        echo 'XSS: ' . $this->foo;
        return $this->foo;
    }
}

// will call the function __toString(), XSS vulnerability
function F($b):string{
    $class = new TestClass($b);
    return $class;
}
$b = $_GET["p1"];
// will print string
F($b);