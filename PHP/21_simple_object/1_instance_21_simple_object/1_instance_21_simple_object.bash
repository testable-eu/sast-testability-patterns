
$_main:
     ; (lines=11, args=0, vars=2, tmps=7)
     ; (before optimizer)
     ; /.../PHP/21_simple_object/1_instance_21_simple_object/1_instance_21_simple_object.php:1-17
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 1 string("Test")
0004 SEND_VAR_EX CV0($b) 1
0005 DO_FCALL
0006 ASSIGN CV1($test) V5
0007 INIT_METHOD_CALL 0 CV1($test) string("getfoo")
0008 V8 = DO_FCALL
0009 ECHO V8
0010 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0006 (new)

Test::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/21_simple_object/1_instance_21_simple_object/1_instance_21_simple_object.php:5-7
     ; return  [] RANGE[0..0]
0000 CV0($foo) = RECV 1
0001 ASSIGN_OBJ THIS string("foo")
0002 OP_DATA CV0($foo)
0003 RETURN null

Test::getfoo:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/21_simple_object/1_instance_21_simple_object/1_instance_21_simple_object.php:9-11
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_OBJ_R THIS string("foo")
0001 RETURN T0
0002 RETURN null
