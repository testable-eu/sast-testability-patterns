
$_main:
     ; (lines=10, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/6_coalesce/3_instance_6_coalesce/3_instance_6_coalesce.php:1-5
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 ASSIGN CV1($b) null
0004 T6 = COALESCE CV1($b) 0007
0005 T7 = ASSIGN CV1($b) CV0($a)
0006 T6 = QM_ASSIGN T7
0007 FREE T6
0008 ECHO CV1($b)
0009 RETURN int(1)
