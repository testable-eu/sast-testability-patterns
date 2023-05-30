<?php
$val = $_GET["p1"]; // source
$conn = odbc_connect('dsn','username','password');
$test = odbc_exec($conn, "SELECT $val FROM sites"); // sink