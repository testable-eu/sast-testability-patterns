<?php
class PropertyTest {
    private $x = 'safe';

    public function __set($name, $value) {
        $this->$name = $value;
    }

    public function __get($name) {
        echo $this->$name; // sink
        return $this->$name;
    }
}

$b = $_GET["p1"]; // source
$obj = new PropertyTest;
$obj->x = $b;
$obj->x;