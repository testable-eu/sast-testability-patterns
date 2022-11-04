<?php
class myclass{
	public $a;
}

$a = $_GET["p1"];
$obj = new myclass();
$obj->a = $a;
--$obj->a;
echo $obj->a;