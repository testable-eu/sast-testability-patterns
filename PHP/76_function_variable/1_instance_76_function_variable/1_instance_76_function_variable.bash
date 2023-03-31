
$_main:
     ; (lines=8, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /tp-framework/testability_patterns/PHP/76_function_variable/1_instance_76_function_variable/1_instance_76_function_variable.php:1-10
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 ASSIGN CV1($func) string("F")
0004 INIT_DYNAMIC_CALL 1 CV1($func)
0005 SEND_VAR_EX CV0($b) 1
0006 DO_FCALL
0007 RETURN int(1)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /tp-framework/testability_patterns/PHP/76_function_variable/1_instance_76_function_variable/1_instance_76_function_variable.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($st) = RECV 1
0001 ECHO CV0($st)
0002 RETURN null
