
$_main:
     ; (lines=10, args=0, vars=3, tmps=6)
     ; (before optimizer)
     ; /.../PHP/80_callback_functions/4_instance_80_callback_functions/4_instance_80_callback_functions.php:1-9
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 ASSIGN CV1($func) string("F")
0004 INIT_USER_CALL 1 string("call_user_func") CV1($func)
0005 SEND_USER CV0($a) 1
0006 V7 = DO_FCALL
0007 ASSIGN CV2($b) V7
0008 ECHO CV2($b)
0009 RETURN int(1)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/80_callback_functions/4_instance_80_callback_functions/4_instance_80_callback_functions.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($var) = RECV 1
0001 RETURN CV0($var)
0002 RETURN null
