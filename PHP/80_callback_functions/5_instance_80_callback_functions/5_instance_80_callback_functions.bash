
$_main:
     ; (lines=12, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/80_callback_functions/5_instance_80_callback_functions/5_instance_80_callback_functions.php:1-9
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 ASSIGN CV1($func) string("F")
0004 INIT_USER_CALL 0 string("call_user_func_array") CV1($func)
0005 T7 = INIT_ARRAY 1 (packed) CV0($a) NEXT
0006 SEND_ARRAY 0 T7
0007 CHECK_UNDEF_ARGS
0008 V8 = DO_FCALL
0009 ASSIGN CV2($b) V8
0010 ECHO CV2($b)
0011 RETURN int(1)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/80_callback_functions/5_instance_80_callback_functions/5_instance_80_callback_functions.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($var) = RECV 1
0001 RETURN CV0($var)
0002 RETURN null
