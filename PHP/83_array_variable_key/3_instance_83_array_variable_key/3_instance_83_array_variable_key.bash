
$_main:
     ; (lines=13, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/83_array_variable_key/3_instance_83_array_variable_key/3_instance_83_array_variable_key.php:1-5
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 T6 = FETCH_R (global) string("_GET")
0004 T7 = FETCH_DIM_R T6 string("p2")
0005 ASSIGN CV1($c) T7
0006 T9 = INIT_ARRAY 3 (packed) int(1) NEXT
0007 T9 = ADD_ARRAY_ELEMENT int(2) NEXT
0008 T9 = ADD_ARRAY_ELEMENT CV1($c) CV0($b)
0009 ASSIGN CV2($x) T9
0010 T11 = FETCH_DIM_R CV2($x) CV0($b)
0011 ECHO T11
0012 RETURN int(1)
LIVE RANGES:
     9: 0007 - 0009 (tmp/var)
