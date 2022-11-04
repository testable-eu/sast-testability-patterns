<?php
class myclass{
   public $b = "safe";
}
$obj1 = new myclass();
$obj1->b = "safe2";
$obj2 = $obj1;
$obj2->b = $_GET["p1"];
// XSS vulnerability
echo $obj1->b;