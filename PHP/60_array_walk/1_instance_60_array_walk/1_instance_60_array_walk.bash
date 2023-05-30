
$_main:
     ; (lines=12, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/60_array_walk/1_instance_60_array_walk/1_instance_60_array_walk.php:1-11
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 T5 = INIT_ARRAY 3 (packed) CV0($b) NEXT
0004 T5 = ADD_ARRAY_ELEMENT string("a") NEXT
0005 T5 = ADD_ARRAY_ELEMENT string("b") NEXT
0006 ASSIGN CV1($arr) T5
0007 INIT_FCALL 2 112 string("array_walk")
0008 SEND_REF CV1($arr) 1
0009 SEND_VAL string("F") 2
0010 DO_ICALL
0011 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0006 (tmp/var)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/60_array_walk/1_instance_60_array_walk/1_instance_60_array_walk.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ECHO CV0($b)
0002 RETURN null
