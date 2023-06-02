<?php
class PropertyTest {
    private $x = 'safe';

    public function __isset($name) {
        echo $this->x; // sink
        return true;
    }

    public function setx($b) {
        $this->x = $b;
    }
}

$b = $_GET["p1"]; // source
$obj = new PropertyTest;
$obj->setx($b);

// XSS vulnerability in the function __isset()
// __isset() is called, because $obj->var does not exist
isset($obj->var);
