<?php
$a = $_GET["p1"]; // source
$b = $GLOBALS["a"]; // tarpit
echo $b; // sink