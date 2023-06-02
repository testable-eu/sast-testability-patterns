<?php
session_start();
$b = $_GET["p1"]; // source
$_SESSION["newsession"] = $b;

include("2_instance_66_superglobals_0.php");