
$_main:
     ; (lines=6, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /.../PHP/7_string_arithmetic_operations/2_instance_7_string_arithmetic_operations/2_instance_7_string_arithmetic_operations.php:1-4
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_GET")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN CV0($a) T2
0003 PRE_DEC CV0($a)
0004 ECHO CV0($a)
0005 RETURN int(1)
