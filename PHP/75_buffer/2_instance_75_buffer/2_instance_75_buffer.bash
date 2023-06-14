
$_main:
     ; (lines=11, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/75_buffer/2_instance_75_buffer/2_instance_75_buffer.php:1-6
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 0 80 string("ob_start")
0004 DO_ICALL
0005 ECHO CV0($a)
0006 INIT_FCALL 0 80 string("ob_get_clean")
0007 V6 = DO_ICALL
0008 ASSIGN CV1($x) V6
0009 ECHO CV1($x)
0010 RETURN int(1)
