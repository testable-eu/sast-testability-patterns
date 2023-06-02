<?php
$a = $_GET["p1"]; // source
$message = "safe";
// Inherit $message
$example = function () use ($message) {
    // it will print &#39;safe&#39;, it save the value of $message
    // so change $message will not change the value inside the closure
    // no vulnerability
    return $message;
};
$message = $a;
$b = $example();
echo $b; // sink
