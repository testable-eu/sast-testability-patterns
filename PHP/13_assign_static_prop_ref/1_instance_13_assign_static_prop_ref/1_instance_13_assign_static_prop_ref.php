<?php
class myclass {
	static $sprop; // tarpit
};

$y = "abc";
myclass::$sprop = &$y; // tarpit
$y = $_GET["p1"]; // source
echo myclass::$sprop; // sink