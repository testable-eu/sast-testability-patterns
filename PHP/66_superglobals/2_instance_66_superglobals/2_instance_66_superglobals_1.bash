
$_main:
     ; (lines=10, args=0, vars=1, tmps=7)
     ; (before optimizer)
     ; /.../PHP/66_superglobals/2_instance_66_superglobals/2_instance_66_superglobals_1.php:1-6
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 0 80 string("session_start")
0001 DO_ICALL
0002 T2 = FETCH_R (global) string("_GET")
0003 T3 = FETCH_DIM_R T2 string("p1")
0004 ASSIGN CV0($b) T3
0005 V5 = FETCH_W (global) string("_SESSION")
0006 ASSIGN_DIM V5 string("newsession")
0007 OP_DATA CV0($b)
0008 INCLUDE_OR_EVAL (include) string("2_instance_66_superglobals_0.php")
0009 RETURN int(1)
