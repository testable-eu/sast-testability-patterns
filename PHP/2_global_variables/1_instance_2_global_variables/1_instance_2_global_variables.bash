
$_main:
     ; (lines=9, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/2_global_variables/1_instance_2_global_variables/1_instance_2_global_variables.php:1-11
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($result) string("")
0001 T3 = FETCH_R (global) string("_GET")
0002 T4 = FETCH_DIM_R T3 string("p1")
0003 ASSIGN CV1($words) T4
0004 INIT_FCALL 1 128 string("f")
0005 SEND_VAR CV1($words) 1
0006 DO_UCALL
0007 ECHO CV0($result)
0008 RETURN int(1)

F:
     ; (lines=4, args=1, vars=2, tmps=1)
     ; (before optimizer)
     ; /.../PHP/2_global_variables/1_instance_2_global_variables/1_instance_2_global_variables.php:3-7
     ; return  [] RANGE[0..0]
0000 CV0($word) = RECV 1
0001 BIND_GLOBAL CV1($result) string("result")
0002 ASSIGN CV1($result) CV0($word)
0003 RETURN null
