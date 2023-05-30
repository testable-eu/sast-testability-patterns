
$_main:
     ; (lines=12, args=0, vars=3, tmps=8)
     ; (before optimizer)
     ; /.../PHP/38_invoke/1_instance_38_invoke/1_instance_38_invoke.php:1-10
     ; return  [] RANGE[0..0]
0000 V3 = NEW 0 string("CallableClass")
0001 DO_FCALL
0002 ASSIGN CV0($obj) V3
0003 T6 = FETCH_R (global) string("_GET")
0004 T7 = FETCH_DIM_R T6 string("p1")
0005 ASSIGN CV1($b) T7
0006 INIT_DYNAMIC_CALL 1 CV0($obj)
0007 SEND_VAR_EX CV1($b) 1
0008 V9 = DO_FCALL
0009 ASSIGN CV2($a) V9
0010 ECHO CV2($a)
0011 RETURN int(1)
LIVE RANGES:
     3: 0001 - 0002 (new)

CallableClass::__invoke:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/38_invoke/1_instance_38_invoke/1_instance_38_invoke.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($x) = RECV 1
0001 RETURN CV0($x)
0002 RETURN null
