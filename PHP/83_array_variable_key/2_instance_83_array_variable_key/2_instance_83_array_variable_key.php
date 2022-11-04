<?php
$a = "ttt";
$b = $_GET["p1"];
$c = $_GET["p2"];
$x = array(1,2,$a=>$b);
echo $x[$c];