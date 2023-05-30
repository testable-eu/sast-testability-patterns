<?php
function fourth() { // fourth element returned
    return func_get_args()[3]; //tarpit
}
$a = $_GET["p1"]; // source
$b = fourth(1, 2, 3, $a);
echo $b; // sink