<?php
$b = $_GET["p1"]; // source
$array = array('abc','def',$b,'ghi');
//Vulnerability (XSS)
echo $array[1]; // sink