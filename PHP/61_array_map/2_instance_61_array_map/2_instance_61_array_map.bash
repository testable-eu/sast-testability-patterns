
$_main:
     ; (lines=15, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/61_array_map/2_instance_61_array_map/2_instance_61_array_map.php:1-10
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 T6 = FETCH_R (global) string("_GET")
0004 T7 = FETCH_DIM_R T6 string("p2")
0005 ASSIGN CV1($b) T7
0006 T9 = INIT_ARRAY 3 (packed) CV0($a) NEXT
0007 T9 = ADD_ARRAY_ELEMENT string("a") NEXT
0008 T9 = ADD_ARRAY_ELEMENT string("b") NEXT
0009 ASSIGN CV2($input) T9
0010 INIT_FCALL 2 112 string("array_map")
0011 SEND_VAR CV1($b) 1
0012 SEND_VAR CV2($input) 2
0013 DO_ICALL
0014 RETURN int(1)
LIVE RANGES:
     9: 0007 - 0009 (tmp/var)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/61_array_map/2_instance_61_array_map/2_instance_61_array_map.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ECHO CV0($b)
0002 RETURN null
