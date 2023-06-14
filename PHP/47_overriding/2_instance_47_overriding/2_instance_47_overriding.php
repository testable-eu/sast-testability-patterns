<?php
class parent_class {
    function F($b) {
       return $b;
    }
}

class child_class extends parent_class {
    function F($b) {
        return "safe";
     }
}

$b = $_GET['p1']; // source
$obj = new child_class();
// The F of child_class is called, so no XSS
$a = $obj->F($b);
echo $a; // sink
