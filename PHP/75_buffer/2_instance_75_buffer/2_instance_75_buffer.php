<?php
$a = $_GET["p1"]; // source
ob_start();
echo $a;
$x = ob_get_clean();
echo $x; // sink