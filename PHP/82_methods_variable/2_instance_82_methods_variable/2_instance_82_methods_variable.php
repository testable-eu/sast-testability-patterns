<?php

class myclass{
	
	function F($b){
		echo $b;
	}
}

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$func = $_GET["p2"];
$obj->$func($a);
