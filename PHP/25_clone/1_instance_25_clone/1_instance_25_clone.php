<?php
class Foo
{
    public $b = 'safe';
    function __construct($b){
        $this->b = $b;
    }
    public function baz()
    {
        // $b has the input, XSS Vulnerability
        echo $this->b;
    }
}
$b = $_GET["p1"];
$ob1 = new Foo($b);
$ob2 = clone $ob1;
$ob2->baz();
//$ob->baz();
//array(new Foo($b), "baz")();