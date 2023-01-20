<?php

class PropertyTest
{
    private $x = 'safe';

    public function __isset($name)
    {
        echo "Is '$this->x' set?\n";
        return true;
    }

    public function setx($b)
    {
        $this->x = $b;
    }
}

$b = $_GET["p1"];
$obj = new PropertyTest;
$obj->setx($b);

// XSS vulnerability in the function __isset()
if (isset($obj->x)) {
    echo "isset called";
}