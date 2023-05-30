<?php
class myclass {
	public $a;
}

$a = $_GET["p1"]; // source
$obj = new myclass();
$obj->a = $a;
++$obj->a; // tarpit
echo $obj->a; // sink