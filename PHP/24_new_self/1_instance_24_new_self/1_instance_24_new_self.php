<?php

class myclass{

function __construct(){
    $this->b = $_GET['p1'];
    //$this->b = "abc";
}

function F(){
   $obj2 = new self;
   $obj2->T();
}

function T(){
    echo $this->b;
}
}


$obj = new myclass();
$obj2 = $obj->F();
