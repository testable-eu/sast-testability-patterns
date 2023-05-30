
$_main:
     ; (lines=10, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/43_tostring_echo_object/1_instance_43_tostring_echo_object/1_instance_43_tostring_echo_object.php:1-16
     ; return  [] RANGE[0..0]
0000 DECLARE_CLASS string("testclass")
0001 T2 = FETCH_R (global) string("_GET")
0002 T3 = FETCH_DIM_R T2 string("p1")
0003 ASSIGN CV0($b) T3
0004 V5 = NEW 1 string("TestClass")
0005 SEND_VAR_EX CV0($b) 1
0006 DO_FCALL
0007 ASSIGN CV1($class) V5
0008 ECHO CV1($class)
0009 RETURN int(1)
LIVE RANGES:
     5: 0005 - 0007 (new)

TestClass::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/43_tostring_echo_object/1_instance_43_tostring_echo_object/1_instance_43_tostring_echo_object.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($foo) = RECV 1
0001 ASSIGN_OBJ THIS string("foo")
0002 OP_DATA CV0($foo)
0003 RETURN null

TestClass::__toString:
     ; (lines=5, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/43_tostring_echo_object/1_instance_43_tostring_echo_object/1_instance_43_tostring_echo_object.php:8-10
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_OBJ_R THIS string("foo")
0001 VERIFY_RETURN_TYPE T0
0002 RETURN T0
0003 VERIFY_RETURN_TYPE
0004 RETURN null
LIVE RANGES:
     0: 0001 - 0002 (tmp/var)
