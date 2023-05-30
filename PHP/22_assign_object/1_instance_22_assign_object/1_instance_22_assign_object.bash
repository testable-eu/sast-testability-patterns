
$_main:
     ; (lines=13, args=0, vars=2, tmps=9)
     ; (before optimizer)
     ; /.../PHP/22_assign_object/1_instance_22_assign_object/1_instance_22_assign_object.php:1-10
     ; return  [] RANGE[0..0]
0000 V2 = NEW 0 string("myclass")
0001 DO_FCALL
0002 ASSIGN CV0($obj1) V2
0003 ASSIGN_OBJ CV0($obj1) string("b")
0004 OP_DATA string("safe2")
0005 ASSIGN CV1($obj2) CV0($obj1)
0006 T8 = FETCH_R (global) string("_GET")
0007 T9 = FETCH_DIM_R T8 string("p1")
0008 ASSIGN_OBJ CV1($obj2) string("b")
0009 OP_DATA T9
0010 T10 = FETCH_OBJ_R CV0($obj1) string("b")
0011 ECHO T10
0012 RETURN int(1)
LIVE RANGES:
     2: 0001 - 0002 (new)
