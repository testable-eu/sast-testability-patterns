<?php
  class A {
      public $one = 1;

      function __construct($b){
        $this->one = $b;
      }
    
      static function show_one() {
          echo $this->one;
      }
  }
  
$b = $_GET["p1"];
$a = new A($b);
$a::show_one();