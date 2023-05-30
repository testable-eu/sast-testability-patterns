
$_main:
     ; (lines=8, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/6_coalesce/2_instance_6_coalesce/2_instance_6_coalesce.php:1-4
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 T5 = COALESCE null 0005
0004 T5 = QM_ASSIGN CV0($a)
0005 ASSIGN CV1($b) T5
0006 ECHO CV1($b)
0007 RETURN int(1)
