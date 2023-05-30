
$_main:
     ; (lines=5, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /.../PHP/79_dynamic_include/5_instance_79_dynamic_include/5_instance_79_dynamic_include_1.php:1-3
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_GET")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN CV0($a) T2
0003 INCLUDE_OR_EVAL (include) string("5_instance_79_dynamic_include_0.php")
0004 RETURN int(1)
