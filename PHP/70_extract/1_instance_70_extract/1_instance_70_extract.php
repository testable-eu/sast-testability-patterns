<?php
    $aaa = $_GET["p1"];
    $arr = array("A"=>$aaa,"B"=>"BBB");
    extract($arr);
    echo $A . $B;
