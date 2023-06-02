
$_main:
     ; (lines=8, args=0, vars=3, tmps=6)
     ; (before optimizer)
     ; /.../PHP/5_combined_operator/3_instance_5_combined_operator/3_instance_5_combined_operator.php:1-4
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 T6 = ASSIGN CV2($b) CV0($a)
0004 T7 = CONCAT T6 string(" safe")
0005 ASSIGN CV1($c) T7
0006 ECHO CV2($b)
0007 RETURN int(1)
