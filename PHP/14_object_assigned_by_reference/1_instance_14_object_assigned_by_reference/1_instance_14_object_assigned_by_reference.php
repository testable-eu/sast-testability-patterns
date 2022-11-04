<?php
class myclass{
    public $prop;
};
$x = "safe";
$obj = "abc";
$obj->prop = &$x; // tarpit
$x = $_GET["p1"]; // source
echo $obj->prop; // sink