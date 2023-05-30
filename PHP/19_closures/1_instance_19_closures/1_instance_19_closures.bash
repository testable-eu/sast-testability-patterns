
$_main:
     ; (lines=11, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/19_closures/1_instance_19_closures/1_instance_19_closures.php:1-7
     ; return  [] RANGE[0..0]
0000 T3 = DECLARE_LAMBDA_FUNCTION 0
0001 ASSIGN CV0($greet) T3
0002 T5 = FETCH_R (global) string("_GET")
0003 T6 = FETCH_DIM_R T5 string("p1")
0004 ASSIGN CV1($a) T6
0005 INIT_DYNAMIC_CALL 1 CV0($greet)
0006 SEND_VAR_EX CV1($a) 1
0007 V8 = DO_FCALL
0008 ASSIGN CV2($b) V8
0009 ECHO CV2($b)
0010 RETURN int(1)

{closure}:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/19_closures/1_instance_19_closures/1_instance_19_closures.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($name) = RECV 1
0001 RETURN CV0($name)
0002 RETURN null
