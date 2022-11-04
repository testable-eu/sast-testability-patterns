<?php

$b = $_GET["p1"];

preg_match('/[^\s]+/', $b, $matches);
echo($matches[0]);

