
$_main:
     ; (lines=11, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/58_simple_array/2_instance_58_simple_array/2_instance_58_simple_array.php:1-5
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 T5 = INIT_ARRAY 4 (packed) string("abc") NEXT
0004 T5 = ADD_ARRAY_ELEMENT string("def") NEXT
0005 T5 = ADD_ARRAY_ELEMENT CV0($b) NEXT
0006 T5 = ADD_ARRAY_ELEMENT string("ghi") NEXT
0007 ASSIGN CV1($array) T5
0008 T7 = FETCH_DIM_R CV1($array) int(1)
0009 ECHO T7
0010 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0007 (tmp/var)
