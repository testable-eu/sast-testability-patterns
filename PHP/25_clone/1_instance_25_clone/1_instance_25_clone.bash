
$_main:
     ; (lines=14, args=0, vars=4, tmps=10)
     ; (before optimizer)
     ; /.../PHP/25_clone/1_instance_25_clone/1_instance_25_clone.php:1-16
     ; return  [] RANGE[0..0]
0000 T4 = FETCH_R (global) string("_GET")
0001 T5 = FETCH_DIM_R T4 string("p1")
0002 ASSIGN CV0($b) T5
0003 V7 = NEW 1 string("Foo")
0004 SEND_VAR_EX CV0($b) 1
0005 DO_FCALL
0006 ASSIGN CV1($ob1) V7
0007 T10 = CLONE CV1($ob1)
0008 ASSIGN CV2($ob2) T10
0009 INIT_METHOD_CALL 0 CV2($ob2) string("baz")
0010 V12 = DO_FCALL
0011 ASSIGN CV3($a) V12
0012 ECHO CV3($a)
0013 RETURN int(1)
LIVE RANGES:
     7: 0004 - 0006 (new)

Foo::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/25_clone/1_instance_25_clone/1_instance_25_clone.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_OBJ THIS string("b")
0002 OP_DATA CV0($b)
0003 RETURN null

Foo::baz:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/25_clone/1_instance_25_clone/1_instance_25_clone.php:7-10
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_OBJ_R THIS string("b")
0001 RETURN T0
0002 RETURN null
