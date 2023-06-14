
$_main:
     ; (lines=11, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/83_array_variable_key/1_instance_83_array_variable_key/1_instance_83_array_variable_key.php:1-5
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) string("abc")
0001 T4 = FETCH_R (global) string("_GET")
0002 T5 = FETCH_DIM_R T4 string("p1")
0003 ASSIGN CV1($b) T5
0004 T7 = INIT_ARRAY 3 (packed) int(1) NEXT
0005 T7 = ADD_ARRAY_ELEMENT int(2) NEXT
0006 T7 = ADD_ARRAY_ELEMENT CV1($b) CV0($a)
0007 ASSIGN CV2($x) T7
0008 T9 = FETCH_DIM_R CV2($x) string("abc")
0009 ECHO T9
0010 RETURN int(1)
LIVE RANGES:
     7: 0005 - 0007 (tmp/var)
