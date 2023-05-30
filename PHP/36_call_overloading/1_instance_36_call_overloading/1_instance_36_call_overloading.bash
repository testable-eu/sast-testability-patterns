
$_main:
     ; (lines=12, args=0, vars=2, tmps=8)
     ; (before optimizer)
     ; /.../PHP/36_call_overloading/1_instance_36_call_overloading/1_instance_36_call_overloading.php:1-16
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 0 string("MethodTest")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V5
0006 ASSIGN_OBJ CV1($obj) string("x")
0007 OP_DATA CV0($b)
0008 INIT_METHOD_CALL 1 CV1($obj) string("runTest")
0009 SEND_VAR_EX CV0($b) 1
0010 DO_FCALL
0011 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0005 (new)

MethodTest::__call:
     ; (lines=8, args=2, vars=3, tmps=1)
     ; (before optimizer)
     ; /.../PHP/36_call_overloading/1_instance_36_call_overloading/1_instance_36_call_overloading.php:3-7
     ; return  [] RANGE[0..0]
0000 CV0($name) = RECV 1
0001 CV1($arguments) = RECV 2
0002 V3 = FE_RESET_R CV1($arguments) 0006
0003 FE_FETCH_R V3 CV2($arg) 0006
0004 ECHO CV2($arg)
0005 JMP 0003
0006 FE_FREE V3
0007 RETURN null
LIVE RANGES:
     3: 0003 - 0006 (loop)
