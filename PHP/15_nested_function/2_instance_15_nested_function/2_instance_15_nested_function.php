<?php
function F() {
    function D($c) { // tarpit
        return $c;
    }
}
$a = $_GET["p1"]; // source
F(); // define F2 while executing F1
$b = D($a);
echo $b; // sink