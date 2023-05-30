
$_main:
     ; (lines=12, args=0, vars=2, tmps=7)
     ; (before optimizer)
     ; /.../PHP/44_verify_return_type/1_instance_44_verify_return_type/1_instance_44_verify_return_type.php:1-21
     ; return  [] RANGE[0..0]
0000 DECLARE_CLASS string("testclass")
0001 T2 = FETCH_R (global) string("_GET")
0002 T3 = FETCH_DIM_R T2 string("p1")
0003 ASSIGN CV0($b) T3
0004 V5 = NEW 1 string("TestClass")
0005 SEND_VAR_EX CV0($b) 1
0006 DO_FCALL
0007 ASSIGN CV1($c) V5
0008 INIT_FCALL 1 96 string("f")
0009 SEND_VAR CV1($c) 1
0010 DO_UCALL
0011 RETURN int(1)
LIVE RANGES:
     5: 0005 - 0007 (new)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/44_verify_return_type/1_instance_44_verify_return_type/1_instance_44_verify_return_type.php:15-17
     ; return  [] RANGE[0..0]
0000 CV0($c) = RECV 1
0001 ECHO string("message")
0002 RETURN null

TestClass::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/44_verify_return_type/1_instance_44_verify_return_type/1_instance_44_verify_return_type.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($val) = RECV 1
0001 ASSIGN_OBJ THIS string("x")
0002 OP_DATA CV0($val)
0003 RETURN null

TestClass::__toString:
     ; (lines=7, args=0, vars=0, tmps=2)
     ; (before optimizer)
     ; /.../PHP/44_verify_return_type/1_instance_44_verify_return_type/1_instance_44_verify_return_type.php:8-11
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_OBJ_R THIS string("x")
0001 ECHO T0
0002 T1 = FETCH_OBJ_R THIS string("x")
0003 VERIFY_RETURN_TYPE T1
0004 RETURN T1
0005 VERIFY_RETURN_TYPE
0006 RETURN null
LIVE RANGES:
     1: 0003 - 0004 (tmp/var)
