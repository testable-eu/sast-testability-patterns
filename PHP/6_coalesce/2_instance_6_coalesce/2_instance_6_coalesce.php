<?php
$a = $_GET["p1"]; // source
$b = null ?? $a; //tarpit: $b assigned to $a as the 1st param of coalescing is null
echo $b; // sink