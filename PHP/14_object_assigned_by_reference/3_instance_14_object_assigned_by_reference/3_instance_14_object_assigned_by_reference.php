<?php
class myclass{
    public $prop;
};
$a = $_GET["p1"]; // source
$x = "safe";
$obj = "abc";
$obj->prop = &$x; // tarpit
$x = $a;
echo $obj->prop; // sink