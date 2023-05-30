
$_main:
     ; (lines=9, args=0, vars=1, tmps=6)
     ; (before optimizer)
     ; /.../PHP/7_string_arithmetic_operations/6_instance_7_string_arithmetic_operations/6_instance_7_string_arithmetic_operations.php:1-9
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_GET")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN CV0($a) T2
0003 ASSIGN_STATIC_PROP string("a") string("static_class")
0004 OP_DATA CV0($a)
0005 PRE_INC_STATIC_PROP string("a") string("static_class")
0006 T6 = FETCH_STATIC_PROP_R string("a") string("static_class")
0007 ECHO T6
0008 RETURN int(1)
