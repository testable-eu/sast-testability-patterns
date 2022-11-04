<?php
class static_class{
	public static $a;
}

$a = $_GET["p1"];
static_class::$a = $a;
static_class::$a++;
echo static_class::$a;