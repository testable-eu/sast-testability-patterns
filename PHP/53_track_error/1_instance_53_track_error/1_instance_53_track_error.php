<?php
$a = $_GET["p1"];
@trigger_error($a);
$e=error_get_last();
echo $e['message'];