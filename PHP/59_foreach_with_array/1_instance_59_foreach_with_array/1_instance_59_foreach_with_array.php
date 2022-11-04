<?php
$b = $_GET["p1"];
$array = array(
    "foo" => "bar",
    "bar" => "foo",
    "too"   => $b,
    -100  => 100,
);

foreach(array_keys($array) as $key){
    echo "$key => $array[$key]\n";
}