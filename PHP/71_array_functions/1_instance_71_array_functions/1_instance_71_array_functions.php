<?php
    $b = $_GET["p1"];
	$array = array('abc', 'def', $b, 'ghi');
	sort($array);
	// There is a vulnerability
	// It will print the input when the input is smaller than 'abc'
	echo $array[0]."\n";
?>