<?php
function F() {
    return $GLOBALS["a"]; // tarpit
}

$a = $_GET["p1"]; // source
$b = F();
echo $b; // sink
