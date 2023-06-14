
$_main:
     ; (lines=10, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/6_coalesce/1_instance_6_coalesce/1_instance_6_coalesce.php:1-5
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 ASSIGN CV1($arr) array(...)
0004 T7 = FETCH_DIM_IS CV1($arr) int(4)
0005 T8 = COALESCE T7 0007
0006 T8 = QM_ASSIGN CV0($a)
0007 ASSIGN CV2($b) T8
0008 ECHO CV2($b)
0009 RETURN int(1)
