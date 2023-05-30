
$_main:
     ; (lines=13, args=0, vars=3, tmps=10)
     ; (before optimizer)
     ; /.../PHP/14_object_assigned_by_reference/3_instance_14_object_assigned_by_reference/3_instance_14_object_assigned_by_reference.php:1-10
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 ASSIGN CV1($x) string("safe")
0004 V7 = NEW 0 string("myclass")
0005 DO_FCALL
0006 ASSIGN CV2($obj) V7
0007 ASSIGN_OBJ_REF CV2($obj) string("prop")
0008 OP_DATA CV1($x)
0009 ASSIGN CV1($x) CV0($a)
0010 T12 = FETCH_OBJ_R CV2($obj) string("prop")
0011 ECHO T12
0012 RETURN int(1)
LIVE RANGES:
     7: 0005 - 0006 (new)
