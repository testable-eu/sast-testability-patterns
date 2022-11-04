<?php

session_start();

$_SESSION["abc"] = $_GET["p1"];

echo "<script> window.location='a.php' </script>";
