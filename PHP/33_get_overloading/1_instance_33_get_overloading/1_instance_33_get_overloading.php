<?php
class PropertyTest{
    private $var = 'safe';

    public function __set($name, $value){
        $this->$name = $value;
    }

    public function __get($name){
        echo $this->$name;
        return $this->$name;
    }
}

$b = $_GET["p1"];
$obj = new PropertyTest;
$obj->var = $b;
$res = $obj->var . "\n\n";