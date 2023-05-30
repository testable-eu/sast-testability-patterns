<?php
$a = $_GET["p1"]; // source
$city  = "San Francisco";
$state = "CA";
$event = $a;
$x = $_GET["p2"]; // event
$location_vars = array("city", "state");
$result = compact($x, $location_vars);
echo $result['event']; // sink