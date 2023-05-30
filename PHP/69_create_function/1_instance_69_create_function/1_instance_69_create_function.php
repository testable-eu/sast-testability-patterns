<?php
$var = $_GET["p1"]; // source
$newfunc = create_function('$a', 'echo $a;');
$newfunc($var); // sink