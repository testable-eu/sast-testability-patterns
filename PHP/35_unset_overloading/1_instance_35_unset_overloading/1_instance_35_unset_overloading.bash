
$_main:
     ; (lines=11, args=0, vars=2, tmps=7)
     ; (before optimizer)
     ; /.../PHP/35_unset_overloading/1_instance_35_unset_overloading/1_instance_35_unset_overloading.php:1-18
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 0 string("PropertyTest")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V5
0006 INIT_METHOD_CALL 1 CV1($obj) string("setx")
0007 SEND_VAR_EX CV0($b) 1
0008 DO_FCALL
0009 UNSET_OBJ CV1($obj) string("x")
0010 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0005 (new)

PropertyTest::setx:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/35_unset_overloading/1_instance_35_unset_overloading/1_instance_35_unset_overloading.php:5-7
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_OBJ THIS string("x")
0002 OP_DATA CV0($b)
0003 RETURN null

PropertyTest::__unset:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/35_unset_overloading/1_instance_35_unset_overloading/1_instance_35_unset_overloading.php:9-11
     ; return  [] RANGE[0..0]
0000 CV0($name) = RECV 1
0001 T1 = FETCH_OBJ_R THIS string("x")
0002 ECHO T1
0003 RETURN null
