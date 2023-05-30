
$_main:
     ; (lines=12, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/17_get_arguments/2_instance_17_get_arguments/2_instance_17_get_arguments.php:1-7
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 4 176 string("fourth")
0004 SEND_VAL int(1) 1
0005 SEND_VAL int(2) 2
0006 SEND_VAL int(3) 3
0007 SEND_VAR CV0($a) 4
0008 V5 = DO_UCALL
0009 ASSIGN CV1($b) V5
0010 ECHO CV1($b)
0011 RETURN int(1)

fourth:
     ; (lines=4, args=0, vars=0, tmps=2)
     ; (before optimizer)
     ; /.../PHP/17_get_arguments/2_instance_17_get_arguments/2_instance_17_get_arguments.php:2-4
     ; return  [] RANGE[0..0]
0000 T0 = FUNC_GET_ARGS
0001 T1 = FETCH_DIM_R T0 int(3)
0002 RETURN T1
0003 RETURN null
