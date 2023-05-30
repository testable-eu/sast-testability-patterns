<?php
$a = $_GET["p1"]; // source
$arr = array(1,2,3);
$b = $arr[4] ?? $a; //tarpit: $b assigned to $a as the 1st param of coalescing is null
echo $b; // sink