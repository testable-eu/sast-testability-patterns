<?php
class A {    
    static function show_one($a) {
      return $a;
    }
}
  
$b = $_GET["p1"]; // source
$a = new A();
$c = $a::show_one($b);
echo $c; // sink
