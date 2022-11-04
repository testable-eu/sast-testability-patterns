<?php

class parent_class{

    function __construct($b){
        echo $b;
    }

    function F($b){
        $a = $b;
    }
}

class child_class extends parent_class{

}

$b = new child_class($_GET['p1']);