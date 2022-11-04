<?php
class Test
{
    private $foo;

    public function __construct($foo)
    {
        $this->foo = $foo;
    }

    public function getfoo(){
        return $this->foo;
    }
}

$b = $_GET["p1"];
$test = new Test($b);
// XSS vulnerability
echo $test->getfoo();