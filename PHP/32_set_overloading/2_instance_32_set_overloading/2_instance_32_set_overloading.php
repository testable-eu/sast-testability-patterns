<?php
class PropertyTest {
    private $var = 'safe';

    public function __set($name, $value) {
        echo $value; // sink
    }
}

$b = $_GET["p1"]; // source
$obj = new PropertyTest;
$obj->x = $b;