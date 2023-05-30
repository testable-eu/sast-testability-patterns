
$_main:
     ; (lines=16, args=0, vars=4, tmps=9)
     ; (before optimizer)
     ; /.../PHP/19_closures/2_instance_19_closures/2_instance_19_closures.php:1-5
     ; return  [] RANGE[0..0]
0000 T4 = FETCH_R (global) string("_GET")
0001 T5 = FETCH_DIM_R T4 string("p1")
0002 ASSIGN CV0($b) T5
0003 T7 = DECLARE_LAMBDA_FUNCTION 0
0004 BIND_LEXICAL T7 CV2($y)
0005 ASSIGN CV1($fn1) T7
0006 INIT_DYNAMIC_CALL 1 CV1($fn1)
0007 SEND_VAL_EX string("safe") 1
0008 V9 = DO_FCALL
0009 INIT_DYNAMIC_CALL 1 V9
0010 SEND_VAR_EX CV0($b) 1
0011 V10 = DO_FCALL
0012 ASSIGN CV3($a) V10
0013 T12 = FETCH_CONSTANT string("a")
0014 ECHO T12
0015 RETURN int(1)
LIVE RANGES:
     7: 0004 - 0005 (tmp/var)

{closure}:
     ; (lines=6, args=1, vars=2, tmps=1)
     ; (before optimizer)
     ; /.../PHP/19_closures/2_instance_19_closures/2_instance_19_closures.php:3-3
     ; return  [] RANGE[0..0]
0000 CV0($x) = RECV 1
0001 BIND_STATIC CV1($y)
0002 T2 = DECLARE_LAMBDA_FUNCTION 0
0003 BIND_LEXICAL T2 CV0($x)
0004 RETURN T2
0005 RETURN null
LIVE RANGES:
     2: 0003 - 0004 (tmp/var)

{closure}:
     ; (lines=5, args=1, vars=2, tmps=1)
     ; (before optimizer)
     ; /.../PHP/19_closures/2_instance_19_closures/2_instance_19_closures.php:3-3
     ; return  [] RANGE[0..0]
0000 CV0($y) = RECV 1
0001 BIND_STATIC CV1($x)
0002 T2 = CONCAT CV1($x) CV0($y)
0003 RETURN T2
0004 RETURN null
