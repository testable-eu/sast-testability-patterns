<?php

class PropertyTest {
    public $x = 'safe';

    public function __isset($name) {
        echo $this->x; // sink
        return true;
    }
}

$b = $_GET["p1"]; // source
$obj = new PropertyTest;
$obj->x = $b;

// __isset() is not called, because $x is public
isset($obj->x);