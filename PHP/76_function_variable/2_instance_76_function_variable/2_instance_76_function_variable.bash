
$_main:
     ; (lines=12, args=0, vars=3, tmps=8)
     ; (before optimizer)
     ; /tp-framework/testability_patterns/PHP/76_function_variable/2_instance_76_function_variable/2_instance_76_function_variable.php:1-8
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 T6 = FETCH_R (global) string("_GET")
0004 T7 = FETCH_DIM_R T6 string("p2")
0005 ASSIGN CV1($func) T7
0006 INIT_DYNAMIC_CALL 1 CV1($func)
0007 SEND_VAR_EX CV0($a) 1
0008 V9 = DO_FCALL
0009 ASSIGN CV2($b) V9
0010 ECHO CV2($b)
0011 RETURN int(1)

F:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /tp-framework/testability_patterns/PHP/76_function_variable/2_instance_76_function_variable/2_instance_76_function_variable.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($st) = RECV 1
0001 RETURN CV0($st)
0002 RETURN null