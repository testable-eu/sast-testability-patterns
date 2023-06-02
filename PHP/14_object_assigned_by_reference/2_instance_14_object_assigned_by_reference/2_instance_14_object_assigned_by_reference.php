<?php
class myclass {
    public $prop;
};
$x = "safe";
$obj = new myclass();
$x = $_GET["p1"]; // source
$obj->prop = &$x; // tarpit
echo $obj->prop; // sink