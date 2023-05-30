
$_main:
     ; (lines=7, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/84_variable_variables/1_instance_84_variable_variables/1_instance_84_variable_variables.php:1-5
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) string("b")
0001 T3 = FETCH_R (global) string("_GET")
0002 T4 = FETCH_DIM_R T3 string("p1")
0003 ASSIGN CV1($b) T4
0004 T6 = FETCH_R (local) CV0($a)
0005 ECHO T6
0006 RETURN int(1)
