<?php
function gen_one_to_three($b) {
    for ($i = 1; $i <= 3; $i++) {
        yield $b;
    }
}
$b = $_GET["p1"];
$generator = gen_one_to_three($b);
foreach ($generator as $value) {
    // XSS, it will print the input $b.
    echo "$value\n";
}