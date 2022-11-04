<?php
class PropertyTest{
    private $var = 'safe';

    public function __set($name, $value){
        echo $value;
    }
}

$b = $_GET["p1"];
$obj = new PropertyTest;
$obj->var = $b;