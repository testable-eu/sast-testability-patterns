<?php

class myclass{
	
	static function F($b){
		echo $b;
	}
}

$a = $_GET["p1"];
//$a = "abc";
$func = "F";
myclass::$func($a);
