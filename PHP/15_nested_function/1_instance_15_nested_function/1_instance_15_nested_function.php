<?php
function F() {
    function D($b) { // tarpit
        echo $b; // sink
    }
}
$b = $_GET["p1"]; // source
F();
D($b);