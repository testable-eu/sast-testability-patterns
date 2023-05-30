<?php
$a = $_GET["p1"]; // source
$city = "San Francisco";
$state = "CA";
$event = $a;

$result = compact(["event", "city", "state"]);
echo $result['event']; // sink
