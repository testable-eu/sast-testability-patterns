<?php

class parent_class{

    function F($b){
       echo $b;
    }
}

class child_class extends parent_class{
    function F($b){
        echo "safe";
     }
}


$obj = new parent_class();
$obj->F($_GET['p1']);