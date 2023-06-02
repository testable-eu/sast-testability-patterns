<?php
$arr = array(1,2,3,4);
$arr[1] = &$arr[3]; // tarpit
$arr[3] = $_GET['p1']; // source
echo $arr[1]; // sink