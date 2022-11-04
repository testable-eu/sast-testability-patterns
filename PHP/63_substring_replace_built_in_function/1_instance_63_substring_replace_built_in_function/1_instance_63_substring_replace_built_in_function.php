<?php
$var = 'ABCDEFGH:/MNRPQR/';
echo "Original: $var\n";

$_fp = fopen("php://stdin", "r");
$b = $_GET["p1"];
//$b = fgets($_fp);

/* These two examples replace all of $var with 'bob'. */
echo substr_replace($var, $b, 0) ."\n";