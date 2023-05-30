
$_main:
     ; (lines=13, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/10_return_by_reference/1_instance_10_return_by_reference/1_instance_10_return_by_reference.php:1-17
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 V6 = NEW 0 string("foo")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V6
0006 INIT_METHOD_CALL 0 CV1($obj) string("getValue")
0007 V9 = DO_FCALL
0008 ASSIGN_REF (function) CV2($b) V9
0009 ASSIGN_OBJ CV1($obj) string("value")
0010 OP_DATA CV0($a)
0011 ECHO CV2($b)
0012 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0005 (new)

foo::getValue:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/10_return_by_reference/1_instance_10_return_by_reference/1_instance_10_return_by_reference.php:5-7
     ; return  [] RANGE[0..0]
0000 V0 = FETCH_OBJ_W (ref) THIS string("value")
0001 RETURN_BY_REF V0
0002 RETURN_BY_REF (function) null
