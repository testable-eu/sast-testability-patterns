<?php
$arr = array("abc", "def", "ghi");
$a = $_GET["p1"];  // source
foreach ($arr as &$x) { // tarpit
// copy $a for all the elements in the array.
// the changes will be in $x and $arr in the same time.
    $x = $a;
}
// will print the value of $a, there is vulnerability
echo $arr[0]; // sink
