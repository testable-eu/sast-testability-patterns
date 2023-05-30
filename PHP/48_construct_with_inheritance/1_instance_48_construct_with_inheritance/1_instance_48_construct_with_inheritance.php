<?php
class parent_class {

    function __construct($b) {
        return $b;
    }
}

class child_class extends parent_class {

}

$b = $_GET['p1']; // source
$a = new child_class($b);
echo $a; // sink
