
$_main:
     ; (lines=9, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/80_callback_functions/2_instance_80_callback_functions/2_instance_80_callback_functions.php:1-8
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 1 96 string("f")
0004 SEND_USER CV0($a) 1
0005 V5 = DO_FCALL
0006 ASSIGN CV1($b) V5
0007 ECHO CV1($b)
0008 RETURN int(1)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/80_callback_functions/2_instance_80_callback_functions/2_instance_80_callback_functions.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($var) = RECV 1
0001 RETURN CV0($var)
0002 RETURN null
