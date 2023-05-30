
$_main:
     ; (lines=8, args=0, vars=2, tmps=7)
     ; (before optimizer)
     ; /.../PHP/79_dynamic_include/3_instance_79_dynamic_include/3_instance_79_dynamic_include_0.php:1-5
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 T5 = FETCH_R (global) string("_GET")
0004 T6 = FETCH_DIM_R T5 string("p2")
0005 ASSIGN CV1($b) T6
0006 INCLUDE_OR_EVAL (include) CV1($b)
0007 RETURN int(1)
