<?php
session_start();

$_SESSION["abc"] = $_GET["p1"]; // source

echo "<script> window.location='1_instance_57_js_redirect_0.php' </script>";
