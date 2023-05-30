<?php
$a = $_GET["p1"]; // source
$b = $_GET["p2"];
if($b) {
    $file = "2_instance_79_dynamic_include_0.php";
} else {
    $file = "2_instance_79_dynamic_include_2.php"; 
}
include($file);