<?php
$b = $_GET["p1"];
//$b = "input";
$array = array(
    "foo" => "bar",
    "bar" => "foo",
    "too"   => $b,
    -100  => 100,
);

foreach($array as $key => $value){
    // XSS when we will print $key
    echo "$key => $value\n";
}