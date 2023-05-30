
$_main:
     ; (lines=15, args=0, vars=2, tmps=9)
     ; (before optimizer)
     ; /.../PHP/23_object_argument/1_instance_23_object_argument/1_instance_23_object_argument.php:1-13
     ; return  [] RANGE[0..0]
0000 V2 = NEW 0 string("stdClass")
0001 DO_FCALL
0002 ASSIGN CV0($x) V2
0003 ASSIGN_OBJ CV0($x) string("prop")
0004 OP_DATA string("abc")
0005 T6 = FETCH_R (global) string("_GET")
0006 T7 = FETCH_DIM_R T6 string("p1")
0007 ASSIGN CV1($b) T7
0008 INIT_FCALL 2 128 string("f")
0009 SEND_VAR CV0($x) 1
0010 SEND_VAR CV1($b) 2
0011 DO_UCALL
0012 T10 = FETCH_OBJ_R CV0($x) string("prop")
0013 ECHO T10
0014 RETURN int(1)
LIVE RANGES:
     2: 0001 - 0002 (new)

f:
     ; (lines=5, args=2, vars=2, tmps=1)
     ; (before optimizer)
     ; /.../PHP/23_object_argument/1_instance_23_object_argument/1_instance_23_object_argument.php:6-8
     ; return  [] RANGE[0..0]
0000 CV0($o) = RECV 1
0001 CV1($b) = RECV 2
0002 ASSIGN_OBJ CV0($o) string("prop")
0003 OP_DATA CV1($b)
0004 RETURN null
