
$_main:
     ; (lines=12, args=0, vars=2, tmps=9)
     ; (before optimizer)
     ; /.../PHP/7_string_arithmetic_operations/9_instance_7_string_arithmetic_operations/9_instance_7_string_arithmetic_operations.php:1-10
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 V5 = NEW 0 string("myclass")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V5
0006 ASSIGN_OBJ CV1($obj) string("a")
0007 OP_DATA CV0($a)
0008 PRE_DEC_OBJ CV1($obj) string("a")
0009 T10 = FETCH_OBJ_R CV1($obj) string("a")
0010 ECHO T10
0011 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0005 (new)
