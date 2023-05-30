<?php
$var = 'ABCDEFGH:/MNRPQR/';

$b = $_GET["p1"]; // source

$a = substr_replace($var, $b, 0);
echo $a; // sink