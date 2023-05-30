<?php
$b = $_GET["p1"]; // source
$util = (new class {
    public function log($msg) {
        return $msg;
    }
});
// will print the input $b, XSS vulnerability
$a = $util->log($b);
echo $a; // sink