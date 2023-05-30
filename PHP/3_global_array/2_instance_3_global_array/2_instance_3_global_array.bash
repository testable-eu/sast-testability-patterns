
$_main:
     ; (lines=7, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/3_global_array/2_instance_3_global_array/2_instance_3_global_array.php:1-4
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 T5 = FETCH_R (global) string("a")
0004 ASSIGN CV1($b) T5
0005 ECHO CV1($b)
0006 RETURN int(1)
