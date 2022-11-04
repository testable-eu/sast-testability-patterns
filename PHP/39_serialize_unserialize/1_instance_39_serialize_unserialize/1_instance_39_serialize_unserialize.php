<?php
  class A {
      public $one = 1;

      function __construct($b){
        $this->one = $b;
      }
    
      public function show_one() {
          echo $this->one;
      }
  }
  
$b = $_GET["p1"];
$a = new A($b);
$s = serialize($a);
$h = unserialize($s);
// will print $b, XSS vulnerability
$h->show_one();