<?php
$b = $_GET["p1"];
$array = array('abc','def',$b,'ghi');
//Vulnerability (XSS)
echo $array[1];
?>