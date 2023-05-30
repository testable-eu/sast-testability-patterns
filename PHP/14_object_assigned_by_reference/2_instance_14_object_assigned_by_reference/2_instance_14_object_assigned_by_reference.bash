
$_main:
     ; (lines=12, args=0, vars=2, tmps=9)
     ; (before optimizer)
     ; /.../PHP/14_object_assigned_by_reference/2_instance_14_object_assigned_by_reference/2_instance_14_object_assigned_by_reference.php:1-9
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($x) string("safe")
0001 V3 = NEW 0 string("myclass")
0002 DO_FCALL
0003 ASSIGN CV1($obj) V3
0004 T6 = FETCH_R (global) string("_GET")
0005 T7 = FETCH_DIM_R T6 string("p1")
0006 ASSIGN CV0($x) T7
0007 ASSIGN_OBJ_REF CV1($obj) string("prop")
0008 OP_DATA CV0($x)
0009 T10 = FETCH_OBJ_R CV1($obj) string("prop")
0010 ECHO T10
0011 RETURN int(1)
LIVE RANGES:
     3: 0002 - 0003 (new)
