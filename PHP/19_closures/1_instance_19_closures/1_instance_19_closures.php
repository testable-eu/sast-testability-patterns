<?php
$greet = function($name) {
    return $name;
};
$a = $_GET["p1"]; // source
$b = $greet($a);
echo $b; // sink