<?php
function foo($b) {
    $bar = $b;
    try {
        throw new Exception('Exception');
    } catch (Exception $e) {
        echo "catch \n";
        // Before return, the finally will run
        return $bar;
    } finally {
        echo "finally \n";
        //sanitize_xss
        $bar = htmlspecialchars($bar);
    }
}
$b = $_GET["p1"]; // source
$a = foo($b . "\n");
echo $a; // sink
// The output:
// catch
// finally
// $b without sanitize, XSS vulnerability