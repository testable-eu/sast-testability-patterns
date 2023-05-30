<?php
class PropertyTest {
    public $x = 'safe';

    public function __unset($name) {
        echo $this->x; // sink
    }
}

$b = $_GET["p1"]; // source
$obj = new PropertyTest;
$obj->x = $b;
// will not call __unset() function, because x is public
unset($obj->x);