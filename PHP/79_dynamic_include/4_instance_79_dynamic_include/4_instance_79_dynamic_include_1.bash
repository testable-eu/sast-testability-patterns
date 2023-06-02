
$_main:
     ; (lines=7, args=0, vars=3, tmps=6)
     ; (before optimizer)
     ; /.../PHP/79_dynamic_include/4_instance_79_dynamic_include/4_instance_79_dynamic_include_1.php:1-4
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_DIM_R CV1($_Get) string("p1")
0001 ASSIGN CV0($a) T3
0002 T5 = FETCH_DIM_R CV1($_Get) string("p2")
0003 ASSIGN CV2($b) T5
0004 T7 = CONCAT string("4_instance") CV2($b)
0005 INCLUDE_OR_EVAL (include) T7
0006 RETURN int(1)
