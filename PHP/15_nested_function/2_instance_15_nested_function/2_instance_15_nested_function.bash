
$_main:
     ; (lines=11, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/15_nested_function/2_instance_15_nested_function/2_instance_15_nested_function.php:1-10
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 0 80 string("f")
0004 DO_UCALL
0005 INIT_FCALL_BY_NAME 1 string("D")
0006 SEND_VAR_EX CV0($a) 1
0007 V6 = DO_FCALL_BY_NAME
0008 ASSIGN CV1($b) V6
0009 ECHO CV1($b)
0010 RETURN int(1)

F:
     ; (lines=2, args=0, vars=0, tmps=0)
     ; (before optimizer)
     ; /.../PHP/15_nested_function/2_instance_15_nested_function/2_instance_15_nested_function.php:2-6
     ; return  [] RANGE[0..0]
0000 DECLARE_FUNCTION string("d") 0
0001 RETURN null

D:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/15_nested_function/2_instance_15_nested_function/2_instance_15_nested_function.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($c) = RECV 1
0001 RETURN CV0($c)
0002 RETURN null
