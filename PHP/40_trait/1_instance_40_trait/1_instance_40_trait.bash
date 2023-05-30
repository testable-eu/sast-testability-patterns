
$_main:
     ; (lines=13, args=0, vars=3, tmps=8)
     ; (before optimizer)
     ; /.../PHP/40_trait/1_instance_40_trait/1_instance_40_trait.php:1-16
     ; return  [] RANGE[0..0]
0000 DECLARE_CLASS string("myhelloworld")
0001 T3 = FETCH_R (global) string("_GET")
0002 T4 = FETCH_DIM_R T3 string("p1")
0003 ASSIGN CV0($b) T4
0004 V6 = NEW 0 string("MyHelloWorld")
0005 DO_FCALL
0006 ASSIGN CV1($o) V6
0007 INIT_METHOD_CALL 1 CV1($o) string("sayHello")
0008 SEND_VAR_EX CV0($b) 1
0009 V9 = DO_FCALL
0010 ASSIGN CV2($a) V9
0011 ECHO CV2($a)
0012 RETURN int(1)
LIVE RANGES:
     6: 0005 - 0006 (new)

SayWorld::sayHello:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/40_trait/1_instance_40_trait/1_instance_40_trait.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 RETURN CV0($b)
0002 RETURN null
