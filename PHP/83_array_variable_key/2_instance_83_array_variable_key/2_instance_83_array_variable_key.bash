
$_main:
     ; (lines=14, args=0, vars=4, tmps=10)
     ; (before optimizer)
     ; /.../PHP/83_array_variable_key/2_instance_83_array_variable_key/2_instance_83_array_variable_key.php:1-6
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) string("ttt")
0001 T5 = FETCH_R (global) string("_GET")
0002 T6 = FETCH_DIM_R T5 string("p1")
0003 ASSIGN CV1($b) T6
0004 T8 = FETCH_R (global) string("_GET")
0005 T9 = FETCH_DIM_R T8 string("p2")
0006 ASSIGN CV2($c) T9
0007 T11 = INIT_ARRAY 3 (packed) int(1) NEXT
0008 T11 = ADD_ARRAY_ELEMENT int(2) NEXT
0009 T11 = ADD_ARRAY_ELEMENT CV1($b) CV0($a)
0010 ASSIGN CV3($x) T11
0011 T13 = FETCH_DIM_R CV3($x) CV2($c)
0012 ECHO T13
0013 RETURN int(1)
LIVE RANGES:
     11: 0008 - 0010 (tmp/var)
