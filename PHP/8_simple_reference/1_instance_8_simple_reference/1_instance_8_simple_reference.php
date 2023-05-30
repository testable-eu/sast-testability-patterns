<?php
$a = $_GET["p1"]; // source
$foo = 'Bob';
$bar = &$foo; // tarpit
$bar = $a;
// $foo will have the value of $a (XSS)
echo $foo; // sink