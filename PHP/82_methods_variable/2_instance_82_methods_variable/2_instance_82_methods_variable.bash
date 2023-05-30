
$_main:
     ; (lines=15, args=0, vars=4, tmps=11)
     ; (before optimizer)
     ; /.../PHP/82_methods_variable/2_instance_82_methods_variable/2_instance_82_methods_variable.php:1-12
     ; return  [] RANGE[0..0]
0000 T4 = FETCH_R (global) string("_GET")
0001 T5 = FETCH_DIM_R T4 string("p1")
0002 ASSIGN CV0($b) T5
0003 V7 = NEW 0 string("myclass")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V7
0006 T10 = FETCH_R (global) string("_GET")
0007 T11 = FETCH_DIM_R T10 string("p2")
0008 ASSIGN CV2($func) T11
0009 INIT_METHOD_CALL 1 CV1($obj) CV2($func)
0010 SEND_VAR_EX CV0($b) 1
0011 V13 = DO_FCALL
0012 ASSIGN CV3($a) V13
0013 ECHO CV3($a)
0014 RETURN int(1)
LIVE RANGES:
     7: 0004 - 0005 (new)

myclass::F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/82_methods_variable/2_instance_82_methods_variable/2_instance_82_methods_variable.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 RETURN CV0($b)
0002 RETURN null
