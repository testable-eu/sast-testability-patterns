
$_main:
     ; (lines=12, args=0, vars=3, tmps=8)
     ; (before optimizer)
     ; /.../PHP/41_self_methods/1_instance_41_self_methods/1_instance_41_self_methods.php:1-16
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 V6 = NEW 0 string("myclass")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V6
0006 INIT_METHOD_CALL 1 CV1($obj) string("F")
0007 SEND_VAR_EX CV0($b) 1
0008 V9 = DO_FCALL
0009 ASSIGN CV2($a) V9
0010 ECHO CV2($a)
0011 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0005 (new)

myclass::F:
     ; (lines=6, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/41_self_methods/1_instance_41_self_methods/1_instance_41_self_methods.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 INIT_STATIC_METHOD_CALL 1 (self) (exception) string("T")
0002 SEND_VAR_EX CV0($b) 1
0003 V1 = DO_FCALL
0004 RETURN V1
0005 RETURN null

myclass::T:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/41_self_methods/1_instance_41_self_methods/1_instance_41_self_methods.php:8-10
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 RETURN CV0($b)
0002 RETURN null
