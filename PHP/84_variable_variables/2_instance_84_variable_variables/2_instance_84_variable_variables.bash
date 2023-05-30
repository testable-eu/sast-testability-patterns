
$_main:
     ; (lines=9, args=0, vars=2, tmps=7)
     ; (before optimizer)
     ; /.../PHP/84_variable_variables/2_instance_84_variable_variables/2_instance_84_variable_variables.php:1-6
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 T5 = FETCH_R (global) string("_GET")
0004 T6 = FETCH_DIM_R T5 string("p2")
0005 ASSIGN CV1($b) T6
0006 T8 = FETCH_R (local) CV0($a)
0007 ECHO T8
0008 RETURN int(1)
