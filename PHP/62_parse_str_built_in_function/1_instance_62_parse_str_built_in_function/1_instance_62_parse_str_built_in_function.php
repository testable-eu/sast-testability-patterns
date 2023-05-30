<?php
$b = $_GET["p1"]; // source
//"first=value&arr[]=foo+bar&arr[]=baz"
$str = $b;
parse_str($str);
echo $first;  // sink
echo $arr[0]; // foo bar
echo $arr[1]; // baz