<?php
class PropertyTest
{
    private $x = 'safe';

    public function __get($name)
    {
        echo "Getting ".$this->x;
        return $this->x;
    }

    public function __isset($name)
    {
        echo "Is '$this->x' set?\n";
        return true;
    }

    public function setx($b){
        $this->x = $b;
    }
}

$b = $_GET["p1"];
$obj = new PropertyTest;
$obj->setx($b);

// XSS vulnerability in the function __isset()
if(isset($obj->x)){
    echo "isset function \n";
}

//Two XSS vulnerabilities
// in functions __isset() and __get()
if(!empty($obj->x)){
    echo "empty function \n";
}