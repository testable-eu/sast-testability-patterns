
$_main:
     ; (lines=9, args=0, vars=2, tmps=7)
     ; (before optimizer)
     ; /.../PHP/32_set_overloading/1_instance_32_set_overloading/1_instance_32_set_overloading.php:1-12
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 0 string("PropertyTest")
0004 DO_FCALL
0005 ASSIGN CV1($obj) V5
0006 ASSIGN_OBJ CV1($obj) string("var")
0007 OP_DATA CV0($b)
0008 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0005 (new)

PropertyTest::__set:
     ; (lines=4, args=2, vars=2, tmps=0)
     ; (before optimizer)
     ; /.../PHP/32_set_overloading/1_instance_32_set_overloading/1_instance_32_set_overloading.php:5-7
     ; return  [] RANGE[0..0]
0000 CV0($name) = RECV 1
0001 CV1($value) = RECV 2
0002 ECHO CV1($value)
0003 RETURN null
