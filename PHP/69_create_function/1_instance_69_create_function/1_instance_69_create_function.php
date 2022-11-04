<?php
$var = $_GET["p1"];
$newfunc = create_function('$a', 'echo $a;');
$newfunc($var);
?>