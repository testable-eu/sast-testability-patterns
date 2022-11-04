<?php
$arr = array(1,2,3,4);
$arr[1] = &$arr[3];
$arr[3] = $_GET['p1'];
echo $arr[0];