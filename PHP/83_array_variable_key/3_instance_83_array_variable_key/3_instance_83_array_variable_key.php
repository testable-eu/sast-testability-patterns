<?php
$b = $_GET["p1"];
$c = $_GET["p2"]; // source
$x = array(1,2,$b=>$c);
echo $x[$b]; // sink