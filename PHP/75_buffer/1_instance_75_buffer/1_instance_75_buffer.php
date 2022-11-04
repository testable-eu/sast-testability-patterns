<?php
$a = $_GET["p1"];
ob_start();
echo $a;
echo ob_end_clean();
?>