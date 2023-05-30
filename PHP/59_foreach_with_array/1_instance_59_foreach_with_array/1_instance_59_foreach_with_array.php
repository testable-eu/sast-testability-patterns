<?php
$b = $_GET["p1"]; // source
$array = array(
    "foo" => "bar",
    "bar" => "foo",
    "too"   => $b,
    -100  => 100,
);

foreach(array_keys($array) as $key) {
    echo "$key => $array[$key]\n"; // sink
}