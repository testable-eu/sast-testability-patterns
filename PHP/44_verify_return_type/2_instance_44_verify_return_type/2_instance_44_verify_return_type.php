<?php
class TestClass {
    public $x;
    public function __construct($val) {
        $this->x = $val;
    }

    public function __toString() {
        echo $this->x; // sink
        return $this->x;
    }
}

// will call the function __toString(), XSS vulnerability
function F($b):string {
    $class = new TestClass($b);
    return $class;
}
$b = $_GET["p1"]; // source
F($b);