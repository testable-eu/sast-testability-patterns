<?php
// The second case
// For the third case: $a = $_GET["pa"];
$a = "abc";
$b = $_GET["p1"];
$x = array(1,2,$a=>$b);
echo $x["abc"];