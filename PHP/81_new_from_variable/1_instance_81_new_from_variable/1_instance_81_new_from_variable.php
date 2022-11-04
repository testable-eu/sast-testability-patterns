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
$t = "class1";
$obj = new $t($b);
$t->printX();