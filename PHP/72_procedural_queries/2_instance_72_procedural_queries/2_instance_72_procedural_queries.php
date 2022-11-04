<?php
$a = $_GET["p1"];
$link = mysql_connect("localhost", "my_user", "my_password", "world");
/* Create table doesn't return a resultset */
mysql_query($link, "SELECT name, color, calories FROM $a ORDER BY name");