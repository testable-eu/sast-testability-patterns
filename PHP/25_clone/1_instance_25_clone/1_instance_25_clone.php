<?php
class Foo {
    public $b = 'safe';
    function __construct($b) {
        $this->b = $b;
    }
    public function baz() {
        // $b has the input, XSS Vulnerability
        return $this->b;
    }
}
$b = $_GET["p1"]; // source
$ob1 = new Foo($b);
$ob2 = clone $ob1; // tarpit
$a = $ob2->baz();
echo $a; // sink