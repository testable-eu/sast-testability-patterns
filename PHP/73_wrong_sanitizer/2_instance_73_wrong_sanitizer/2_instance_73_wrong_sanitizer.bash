
$_main:
     ; (lines=9, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/73_wrong_sanitizer/2_instance_73_wrong_sanitizer/2_instance_73_wrong_sanitizer.php:1-4
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 INIT_FCALL 1 96 string("json_encode")
0004 SEND_VAR CV0($b) 1
0005 V5 = DO_ICALL
0006 ASSIGN CV1($a) V5
0007 ECHO CV1($a)
0008 RETURN int(1)
