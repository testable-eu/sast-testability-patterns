<?php
class A {
    public $one = 1;

    function __construct($b) {
      $this->one = $b;
    }
  
    public function show_one() {
        return $this->one;
    }
}
  
$b = $_GET["p1"]; // source
$a = new A($b);
$s = serialize($a);
$h = unserialize($s);
// will print $b, XSS vulnerability
$c = $h->show_one();
echo $c; // sink