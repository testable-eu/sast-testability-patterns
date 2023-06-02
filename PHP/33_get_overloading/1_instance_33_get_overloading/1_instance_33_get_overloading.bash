
$_main:
     ; (lines=11, args=0, vars=2, tmps=8)
     ; (before optimizer)
     ; /.../PHP/33_get_overloading/1_instance_33_get_overloading/1_instance_33_get_overloading.php:1-18
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 0 string("PropertyTest")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V5
0006 ASSIGN_OBJ CV1($obj) string("x")
0007 OP_DATA CV0($b)
0008 T9 = FETCH_OBJ_R CV1($obj) string("x")
0009 FREE T9
0010 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0005 (new)

PropertyTest::__set:
     ; (lines=5, args=2, vars=2, tmps=1)
     ; (before optimizer)
     ; /.../PHP/33_get_overloading/1_instance_33_get_overloading/1_instance_33_get_overloading.php:5-7
     ; return  [] RANGE[0..0]
0000 CV0($name) = RECV 1
0001 CV1($value) = RECV 2
0002 ASSIGN_OBJ THIS CV0($name)
0003 OP_DATA CV1($value)
0004 RETURN null

PropertyTest::__get:
     ; (lines=6, args=1, vars=1, tmps=2)
     ; (before optimizer)
     ; /.../PHP/33_get_overloading/1_instance_33_get_overloading/1_instance_33_get_overloading.php:9-12
     ; return  [] RANGE[0..0]
0000 CV0($name) = RECV 1
0001 T1 = FETCH_OBJ_R THIS CV0($name)
0002 ECHO T1
0003 T2 = FETCH_OBJ_R THIS CV0($name)
0004 RETURN T2
0005 RETURN null
