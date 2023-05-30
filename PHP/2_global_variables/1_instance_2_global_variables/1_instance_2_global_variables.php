<?php
$result="";
function F($word) {
    global $result; // tarpit
    // will change the value of $result
    $result = $word;
}
$words= $_GET["p1"]; // source
F($words);
// XSS vulnerability, will print $word
echo $result; // sink