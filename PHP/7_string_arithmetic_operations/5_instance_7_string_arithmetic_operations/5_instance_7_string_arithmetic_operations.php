<?php
class static_class{
	public static $a;
}

$a = $_GET["p1"]; // source
static_class::$a = $a;
--static_class::$a; // tarpit
echo static_class::$a; // sink