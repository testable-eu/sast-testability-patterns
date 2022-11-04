<?php
class TestClass
{
    public $foo;
    public $doo = 'safe';
    public function __construct($foo){
        $this->foo = $foo;
    }

    public function __toString(){
        echo 'XSS: ' . $this->foo;
        return $this->foo;
    }
}

// will call the function __toString(), XSS vulnerability
function F(string $c){
    echo 'message';
}

$b = $_GET["p1"];
$c = new TestClass($b);
F($c);