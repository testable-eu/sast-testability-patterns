<?php
$a = "abc";
$b = $_GET["p1"]; // source
$x = array(1,2,$a=>$b);
echo $x["abc"]; // sink