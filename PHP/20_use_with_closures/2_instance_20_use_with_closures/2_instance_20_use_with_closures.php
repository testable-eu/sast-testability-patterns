<?php
$a = $_GET["p1"]; // source
$message = "safe";
// Inherit $message
$example = function () use (&$message) {
    // it will print $a, because of & for $message
    // XSS vulnerability
    return $message;
};
$message = $a;
$b = $example();
echo $b; // sink
