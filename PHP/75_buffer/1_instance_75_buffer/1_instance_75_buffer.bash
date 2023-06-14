
$_main:
     ; (lines=13, args=0, vars=2, tmps=7)
     ; (before optimizer)
     ; /.../PHP/75_buffer/1_instance_75_buffer/1_instance_75_buffer.php:1-7
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 0 80 string("ob_start")
0004 DO_ICALL
0005 ECHO CV0($a)
0006 INIT_FCALL 0 80 string("ob_get_contents")
0007 V6 = DO_ICALL
0008 ASSIGN CV1($x) V6
0009 INIT_FCALL 0 80 string("ob_end_clean")
0010 DO_ICALL
0011 ECHO CV1($x)
0012 RETURN int(1)
