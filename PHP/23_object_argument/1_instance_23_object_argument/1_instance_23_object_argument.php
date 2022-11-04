<?php
$x = new stdClass();
$x->prop = 'abc';

// There is no & for $o
function f ( $o, $b ) {
  $o->prop = $b;
}

$b = $_GET["p1"];
f($x,$b);
// XSS vulnerability, it will print $b
echo $x->prop;