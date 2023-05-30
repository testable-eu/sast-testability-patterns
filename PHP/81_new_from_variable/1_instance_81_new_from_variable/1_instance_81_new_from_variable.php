<?php
class class1 {
   public $x;
   public function __construct($y) {
      $this->x = $y;
   }
}

$b = $_GET["p1"]; // source
$t = "class1";
$obj = new $t($b);
echo $obj->x; // sink