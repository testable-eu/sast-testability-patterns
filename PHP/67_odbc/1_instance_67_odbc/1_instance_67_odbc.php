<?php
    $val = $_GET["p1"];
    $conn = odbc_connect('dsn','username','password');
    $test = odbc_exec($conn, "SELECT $val FROM sites");
?>