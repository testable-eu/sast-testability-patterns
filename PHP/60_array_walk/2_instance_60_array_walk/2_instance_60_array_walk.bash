
$_main:
     ; (lines=15, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/60_array_walk/2_instance_60_array_walk/2_instance_60_array_walk.php:1-12
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 T6 = FETCH_R (global) string("_GET")
0004 T7 = FETCH_DIM_R T6 string("p2")
0005 ASSIGN CV1($c) T7
0006 T9 = INIT_ARRAY 3 (packed) CV0($b) NEXT
0007 T9 = ADD_ARRAY_ELEMENT string("a") NEXT
0008 T9 = ADD_ARRAY_ELEMENT string("b") NEXT
0009 ASSIGN CV2($arr) T9
0010 INIT_FCALL 2 112 string("array_walk")
0011 SEND_REF CV2($arr) 1
0012 SEND_VAR CV1($c) 2
0013 DO_ICALL
0014 RETURN int(1)
LIVE RANGES:
     9: 0007 - 0009 (tmp/var)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/60_array_walk/2_instance_60_array_walk/2_instance_60_array_walk.php:5-7
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ECHO CV0($b)
0002 RETURN null
