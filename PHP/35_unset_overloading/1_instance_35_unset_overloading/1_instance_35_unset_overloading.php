<?php
class PropertyTest {
    private $x = 'safe';

    public function setx($b) {
        $this->x = $b;
    }

    public function __unset($name) {
        echo $this->x; // sink
    }
}

$b = $_GET["p1"]; // source
$obj = new PropertyTest;
$obj->setx($b);
// will call __unset() function, XSS vulnerability
unset($obj->x);