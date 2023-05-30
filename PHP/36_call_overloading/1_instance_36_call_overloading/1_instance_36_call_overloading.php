<?php
class MethodTest {
    public function __call($name, $arguments) {
        foreach($arguments as $arg) {
            echo $arg; // sink
        }
    }
}

$b = $_GET["p1"]; // source
$obj = new MethodTest;
$obj->x = $b;
// Will call the __call() function and print the argument $b 
// XSS vulnerability
$obj->runTest($b);
