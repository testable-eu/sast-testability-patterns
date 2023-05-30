<?php
class CallableClass {
    public function __invoke($x) {
        return $x;
    }
}
$obj = new CallableClass;
$b = $_GET["p1"]; // source
$a = $obj($b);
echo $a; // sink