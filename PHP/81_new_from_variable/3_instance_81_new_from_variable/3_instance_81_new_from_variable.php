<?php
class class1{
   public $x;
   public function __construct($y){
      $this->x = y;
   }
   public function printX(){
       echo $this->x;
   }
}
$b = $_GET["p1"];
$bb = $_GET["p2"];
$t = "class".$bb;
$obj = new $t($b);
$t->printX();