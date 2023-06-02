<?php
$c = 5;
$a = $_GET["p1"]; // source
$c > 9? $b = "safe" : $b = $a; // tarpit
echo $b; // sink