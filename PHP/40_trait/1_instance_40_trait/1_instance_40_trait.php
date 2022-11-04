<?php
$b = $_GET["p1"];

trait SayWorld {
    public function sayHello($b) {
        echo $b;
    }
}

class MyHelloWorld{
    use SayWorld;
}

$o = new MyHelloWorld();
// will call the function sayHello() and print $b
$o->sayHello($b);