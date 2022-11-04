<?php
class CallableClass
{
    public function __invoke($x)
    {
        echo $x;
    }
}
$obj = new CallableClass;
$_fp = fopen("php://stdin", "r");
$b = $_GET["p1"];
//$b = fgets($_fp);
$obj($b);