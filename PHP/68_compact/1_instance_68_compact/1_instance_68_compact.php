<?php
$a = $_GET["p1"];
$city  = "San Francisco";
$state = "CA";
$event = $a;

$location_vars = array("city", "state");
$event = "event";
$result = compact($event, $location_vars);
echo $result['event'];
?>