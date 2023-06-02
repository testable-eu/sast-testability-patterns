
$_main:
     ; (lines=13, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/71_array_functions/2_instance_71_array_functions/2_instance_71_array_functions.php:1-6
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($val) T4
0003 ASSIGN CV1($input) array(...)
0004 INIT_FCALL 3 128 string("array_pad")
0005 SEND_VAR CV1($input) 1
0006 SEND_VAL int(5) 2
0007 SEND_VAR CV0($val) 3
0008 V7 = DO_ICALL
0009 ASSIGN CV2($result) V7
0010 T9 = FETCH_DIM_R CV2($result) int(3)
0011 ECHO T9
0012 RETURN int(1)
