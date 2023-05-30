<?php
class BaseClass {
    public $var = 'safe';

    function __construct($b) {
        $this->var = $b;
    }
    function __destruct() {
        echo $this->var; // sink
    }
}

$b = $_GET["p1"]; // source
// In BaseClass constructor
// There is XSS when the object will be destroyed
$obj = new BaseClass($b);