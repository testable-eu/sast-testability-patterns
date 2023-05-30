<?php
$b = $_GET["p1"]; // source
$arr = array("A"=>$b,"B"=>"BBB");
extract($arr);
echo $A; // sink