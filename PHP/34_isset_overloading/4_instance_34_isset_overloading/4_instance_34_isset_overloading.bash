
$_main:
     ; (lines=11, args=0, vars=2, tmps=8)
     ; (before optimizer)
     ; /.../PHP/34_isset_overloading/4_instance_34_isset_overloading/4_instance_34_isset_overloading.php:1-17
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 0 string("PropertyTest")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V5
0006 ASSIGN_OBJ CV1($obj) string("x")
0007 OP_DATA CV0($b)
0008 T9 = ISSET_ISEMPTY_PROP_OBJ (isset) CV1($obj) string("x")
0009 FREE T9
0010 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0005 (new)

PropertyTest::__isset:
     ; (lines=5, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/34_isset_overloading/4_instance_34_isset_overloading/4_instance_34_isset_overloading.php:6-9
     ; return  [] RANGE[0..0]
0000 CV0($name) = RECV 1
0001 T1 = FETCH_OBJ_R THIS string("x")
0002 ECHO T1
0003 RETURN bool(true)
0004 RETURN null
