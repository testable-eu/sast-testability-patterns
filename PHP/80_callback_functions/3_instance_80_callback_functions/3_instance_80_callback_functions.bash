
$_main:
     ; (lines=11, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/80_callback_functions/3_instance_80_callback_functions/3_instance_80_callback_functions.php:1-9
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 ASSIGN CV1($func) string("F")
0004 T7 = CONCAT CV1($func) string("_something")
0005 INIT_USER_CALL 1 string("call_user_func") T7
0006 SEND_USER CV0($a) 1
0007 V8 = DO_FCALL
0008 ASSIGN CV2($b) V8
0009 ECHO CV2($b)
0010 RETURN int(1)

F_something:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/80_callback_functions/3_instance_80_callback_functions/3_instance_80_callback_functions.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($var) = RECV 1
0001 RETURN CV0($var)
0002 RETURN null
