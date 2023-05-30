
$_main:
     ; (lines=13, args=0, vars=4, tmps=9)
     ; (before optimizer)
     ; /.../PHP/82_methods_variable/1_instance_82_methods_variable/1_instance_82_methods_variable.php:1-12
     ; return  [] RANGE[0..0]
0000 T4 = FETCH_R (global) string("_GET")
0001 T5 = FETCH_DIM_R T4 string("p1")
0002 ASSIGN CV0($b) T5
0003 V7 = NEW 0 string("myclass")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V7
0006 ASSIGN CV2($func) string("F")
0007 INIT_METHOD_CALL 1 CV1($obj) CV2($func)
0008 SEND_VAR_EX CV0($b) 1
0009 V11 = DO_FCALL
0010 ASSIGN CV3($a) V11
0011 ECHO CV3($a)
0012 RETURN int(1)
LIVE RANGES:
     7: 0004 - 0005 (new)

myclass::F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/82_methods_variable/1_instance_82_methods_variable/1_instance_82_methods_variable.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 RETURN CV0($b)
0002 RETURN null
