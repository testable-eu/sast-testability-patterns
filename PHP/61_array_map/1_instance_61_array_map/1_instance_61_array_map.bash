
$_main:
     ; (lines=14, args=0, vars=3, tmps=8)
     ; (before optimizer)
     ; /.../PHP/61_array_map/1_instance_61_array_map/1_instance_61_array_map.php:1-10
     ; return  [] RANGE[0..0]
0000 T3 = DECLARE_LAMBDA_FUNCTION 0
0001 ASSIGN CV0($func) T3
0002 T5 = FETCH_R (global) string("_GET")
0003 T6 = FETCH_DIM_R T5 string("p1")
0004 ASSIGN CV1($a) T6
0005 T8 = INIT_ARRAY 3 (packed) CV1($a) NEXT
0006 T8 = ADD_ARRAY_ELEMENT string("b") NEXT
0007 T8 = ADD_ARRAY_ELEMENT string("c") NEXT
0008 ASSIGN CV2($input) T8
0009 INIT_FCALL 2 112 string("array_map")
0010 SEND_VAR CV0($func) 1
0011 SEND_VAR CV2($input) 2
0012 DO_ICALL
0013 RETURN int(1)
LIVE RANGES:
     8: 0006 - 0008 (tmp/var)

{closure}:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/61_array_map/1_instance_61_array_map/1_instance_61_array_map.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 ECHO CV0($a)
0002 RETURN null
