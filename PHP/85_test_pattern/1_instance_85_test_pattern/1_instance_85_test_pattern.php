<?php

function foo($b){
    return $b;
}

$a = $_GET["p1"]; // source
echo foo($a); // sink
