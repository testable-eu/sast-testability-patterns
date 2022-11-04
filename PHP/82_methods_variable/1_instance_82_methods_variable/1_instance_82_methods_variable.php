<?php

class myclass{
	
	function F($b){
		echo $b;
	}
}

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$func = "F";
$obj->$func($a);
