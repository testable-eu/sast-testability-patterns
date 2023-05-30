<?php
$b = $_GET["p1"]; // source

preg_match('/[^\s]+/', $b, $matches);
echo $matches[0]; // sink