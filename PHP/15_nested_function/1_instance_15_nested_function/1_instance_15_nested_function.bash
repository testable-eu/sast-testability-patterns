
$_main:
     ; (lines=9, args=0, vars=1, tmps=5)
     ; (before optimizer)
     ; /.../PHP/15_nested_function/1_instance_15_nested_function/1_instance_15_nested_function.php:1-9
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_GET")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN CV0($b) T2
0003 INIT_FCALL 0 80 string("f")
0004 DO_UCALL
0005 INIT_FCALL_BY_NAME 1 string("D")
0006 SEND_VAR_EX CV0($b) 1
0007 DO_FCALL_BY_NAME
0008 RETURN int(1)

F:
     ; (lines=2, args=0, vars=0, tmps=0)
     ; (before optimizer)
     ; /.../PHP/15_nested_function/1_instance_15_nested_function/1_instance_15_nested_function.php:2-6
     ; return  [] RANGE[0..0]
0000 DECLARE_FUNCTION string("d") 0
0001 RETURN null

D:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/15_nested_function/1_instance_15_nested_function/1_instance_15_nested_function.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ECHO CV0($b)
0002 RETURN null
