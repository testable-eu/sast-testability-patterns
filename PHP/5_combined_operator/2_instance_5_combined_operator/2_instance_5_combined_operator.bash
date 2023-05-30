
$_main:
     ; (lines=7, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/5_combined_operator/2_instance_5_combined_operator/2_instance_5_combined_operator.php:1-3
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 T4 = ASSIGN CV1($b) T3
0003 T5 = CONCAT T4 string(" safe")
0004 ASSIGN CV0($a) T5
0005 ECHO CV0($a)
0006 RETURN int(1)
