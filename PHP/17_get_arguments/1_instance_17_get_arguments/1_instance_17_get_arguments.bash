
$_main:
     ; (lines=10, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /.../PHP/17_get_arguments/1_instance_17_get_arguments/1_instance_17_get_arguments.php:1-11
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_GET")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN CV0($b) T2
0003 INIT_FCALL 4 192 string("sum")
0004 SEND_VAL int(1) 1
0005 SEND_VAL int(2) 2
0006 SEND_VAL int(3) 3
0007 SEND_VAR CV0($b) 4
0008 DO_UCALL
0009 RETURN int(1)

sum:
     ; (lines=7, args=0, vars=1, tmps=2)
     ; (before optimizer)
     ; /.../PHP/17_get_arguments/1_instance_17_get_arguments/1_instance_17_get_arguments.php:2-8
     ; return  [] RANGE[0..0]
0000 T1 = FUNC_GET_ARGS
0001 V2 = FE_RESET_R T1 0005
0002 FE_FETCH_R V2 CV0($n) 0005
0003 ECHO CV0($n)
0004 JMP 0002
0005 FE_FREE V2
0006 RETURN null
LIVE RANGES:
     2: 0002 - 0005 (loop)
