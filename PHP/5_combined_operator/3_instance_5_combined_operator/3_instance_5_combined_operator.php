<?php
$a = $_GET["p1"]; // source
$c = ($b = $a) . " safe"; // tarpit
echo $b; // sink