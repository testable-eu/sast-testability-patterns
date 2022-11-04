<?php
class myclass{
    public $prop;
};
$x = "safe";
$obj = "abc";
$x = $_GET["p1"]; // source
$obj->prop = &$x; // tarpit
echo $obj->prop; // sink