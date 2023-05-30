
$_main:
     ; (lines=13, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/45_static_method_from_variable/1_instance_45_static_method_from_variable/1_instance_45_static_method_from_variable.php:1-12
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 V6 = NEW 0 string("A")
0004 DO_FCALL
0005 ASSIGN CV1($a) V6
0006 V9 = FETCH_CLASS (exception) CV1($a)
0007 INIT_STATIC_METHOD_CALL 1 V9 string("show_one")
0008 SEND_VAR_EX CV0($b) 1
0009 V10 = DO_FCALL
0010 ASSIGN CV2($c) V10
0011 ECHO CV2($c)
0012 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0005 (new)

A::show_one:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/45_static_method_from_variable/1_instance_45_static_method_from_variable/1_instance_45_static_method_from_variable.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 RETURN CV0($a)
0002 RETURN null
