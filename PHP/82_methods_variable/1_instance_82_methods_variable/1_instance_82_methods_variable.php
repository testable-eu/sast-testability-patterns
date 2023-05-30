<?php
class myclass {
	function F($b) {
		return $b;
	}
}

$b = $_GET["p1"]; // source
$obj = new myclass();
$func = "F";
$a = $obj->$func($b);
echo $a; // sink