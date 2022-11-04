<?php
$a = $_GET["p1"];
$link = mysqli_connect("localhost", "my_user", "my_password", "world");
/* Create table doesn't return a resultset */
mysqli_query($link, "SELECT name, color, calories FROM $a ORDER BY name");