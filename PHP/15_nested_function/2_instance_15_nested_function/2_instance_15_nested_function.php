<?php

function F1(){
    function F2($c){ // tarpit
        return $c;
    }
}
$a = $_GET["p1"]; // source
F1(); // define F2 while executing F1
$b = F2($a);
echo $b; // sink