<?php
$a = $_GET["p1"]; // source
@trigger_error($a);
$e = error_get_last();
echo $e['message']; // sink