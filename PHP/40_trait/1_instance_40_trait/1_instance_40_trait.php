<?php
trait SayWorld {
    public function sayHello($b) {
        return $b;
    }
}

class MyHelloWorld {
    use SayWorld;
}

$b = $_GET["p1"]; // source
$o = new MyHelloWorld();
// will call the function sayHello()
$a = $o->sayHello($b);
echo $a; // sink