<?php
$b = $_GET["p1"];
$util = (new class {
    public function log($msg)
    {
        echo $msg;
    }
});
// will print the input $b, XSS vulnerability
$util->log($b);