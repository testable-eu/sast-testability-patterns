
$_main:
     ; (lines=8, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /.../PHP/44_verify_return_type/2_instance_44_verify_return_type/2_instance_44_verify_return_type.php:1-20
     ; return  [] RANGE[0..0]
0000 DECLARE_CLASS string("testclass")
0001 T1 = FETCH_R (global) string("_GET")
0002 T2 = FETCH_DIM_R T1 string("p1")
0003 ASSIGN CV0($b) T2
0004 INIT_FCALL 1 160 string("f")
0005 SEND_VAR CV0($b) 1
0006 DO_UCALL
0007 RETURN int(1)

F:
     ; (lines=9, args=1, vars=2, tmps=3)
     ; (before optimizer)
     ; /.../PHP/44_verify_return_type/2_instance_44_verify_return_type/2_instance_44_verify_return_type.php:15-18
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 V2 = NEW 1 string("TestClass")
0002 SEND_VAR_EX CV0($b) 1
0003 DO_FCALL
0004 ASSIGN CV1($class) V2
0005 VERIFY_RETURN_TYPE CV1($class)
0006 RETURN CV1($class)
0007 VERIFY_RETURN_TYPE
0008 RETURN null
LIVE RANGES:
     2: 0002 - 0004 (new)

TestClass::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/44_verify_return_type/2_instance_44_verify_return_type/2_instance_44_verify_return_type.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($val) = RECV 1
0001 ASSIGN_OBJ THIS string("x")
0002 OP_DATA CV0($val)
0003 RETURN null

TestClass::__toString:
     ; (lines=7, args=0, vars=0, tmps=2)
     ; (before optimizer)
     ; /.../PHP/44_verify_return_type/2_instance_44_verify_return_type/2_instance_44_verify_return_type.php:8-11
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
