
$_main:
     ; (lines=9, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/26_late_static_binding/2_instance_26_late_static_binding/2_instance_26_late_static_binding.php:1-19
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 INIT_STATIC_METHOD_CALL 1 string("A") string("test")
0004 SEND_VAR CV0($b) 1
0005 V5 = DO_UCALL
0006 ASSIGN CV1($a) V5
0007 ECHO CV1($a)
0008 RETURN int(1)

A::who:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/26_late_static_binding/2_instance_26_late_static_binding/2_instance_26_late_static_binding.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 RETURN string("safe")
0002 RETURN null

A::test:
     ; (lines=6, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/26_late_static_binding/2_instance_26_late_static_binding/2_instance_26_late_static_binding.php:6-8
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 INIT_STATIC_METHOD_CALL 1 (static) (exception) string("who")
0002 SEND_VAR_EX CV0($b) 1
0003 V1 = DO_FCALL
0004 RETURN V1
0005 RETURN null

B::who:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/26_late_static_binding/2_instance_26_late_static_binding/2_instance_26_late_static_binding.php:12-14
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 RETURN CV0($b)
0002 RETURN null
