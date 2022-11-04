<?php

class myclass{

    function F($b){
       self::T($b);
    }

    function T($b){
        echo $b;
    }
}


$obj = new myclass();

$obj->F($_GET['p1']);