<?php
class MethodTest
{
    public function __call($name, $arguments)
    {
        foreach($arguments as $arg){
            echo $arg . "\n";
        }
    }
}

$b = $_GET["p1"];
$obj = new MethodTest;
$obj->x = $b;
// Will call the __call() function
// and print the argument $b 
// XSS vulnerability
$obj->runTest('arg1',$b);
