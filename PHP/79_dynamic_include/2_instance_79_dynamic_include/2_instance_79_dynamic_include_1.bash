
$_main:
     ; (lines=12, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/79_dynamic_include/2_instance_79_dynamic_include/2_instance_79_dynamic_include_1.php:1-9
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 T6 = FETCH_R (global) string("_GET")
0004 T7 = FETCH_DIM_R T6 string("p2")
0005 ASSIGN CV1($b) T7
0006 JMPZ CV1($b) 0009
0007 ASSIGN CV2($file) string("2_instance_79_dynamic_include_0.php")
0008 JMP 0010
0009 ASSIGN CV2($file) string("2_instance_79_dynamic_include_2.php")
0010 INCLUDE_OR_EVAL (include) CV2($file)
0011 RETURN int(1)
