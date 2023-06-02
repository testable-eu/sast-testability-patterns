
$_main:
     ; (lines=12, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/46_object_to_array/1_instance_46_object_to_array/1_instance_46_object_to_array.php:1-16
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 V6 = NEW 1 string("A")
0004 SEND_VAR_EX CV0($b) 1
0005 DO_FCALL
0006 ASSIGN CV1($a) V6
0007 T9 = CAST (array) CV1($a)
0008 ASSIGN CV2($arr) T9
0009 T11 = FETCH_DIM_R CV2($arr) string("y")
0010 ECHO T11
0011 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0006 (new)

A::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/46_object_to_array/1_instance_46_object_to_array/1_instance_46_object_to_array.php:6-8
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_OBJ THIS string("y")
0002 OP_DATA CV0($b)
0003 RETURN null
