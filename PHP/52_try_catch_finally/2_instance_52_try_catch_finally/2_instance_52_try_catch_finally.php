<?php
function foo($b)
{
    $bar = $b;
    try {
        throw new Exception('Exception');
    } catch (Exception $e) {
        echo "catch \n";
        // Before return, finally will run
        return $bar;
    } finally {
        echo "finally \n";
        //sanitize_xss
        $bar = htmlspecialchars($bar);
        // This value will return from the function
        return $bar;
    }
}
$b = $_GET["p1"];
echo foo($b . "\n");
// The output:
// catch
// finally
// $b with sanitize, No vulnerability