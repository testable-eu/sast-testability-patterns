<?php
$arr = array(1,2,3,4);
$arr[3] = $_GET['p1']; // source
$arr[1] = &$arr[3]; // tarpit
echo $arr[0]; // sink