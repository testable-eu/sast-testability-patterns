
$_main:
     ; (lines=6, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/79_dynamic_include/1_instance_79_dynamic_include/1_instance_79_dynamic_include_0.php:1-4
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 ASSIGN CV1($file) string("1_instance_79_dynamic_include_1.php")
0004 INCLUDE_OR_EVAL (include) CV1($file)
0005 RETURN int(1)
