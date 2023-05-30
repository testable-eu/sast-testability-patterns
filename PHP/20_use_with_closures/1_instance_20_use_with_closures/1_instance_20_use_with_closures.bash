
$_main:
     ; (lines=13, args=0, vars=4, tmps=9)
     ; (before optimizer)
     ; /.../PHP/20_use_with_closures/1_instance_20_use_with_closures/1_instance_20_use_with_closures.php:1-14
     ; return  [] RANGE[0..0]
0000 T4 = FETCH_R (global) string("_GET")
0001 T5 = FETCH_DIM_R T4 string("p1")
0002 ASSIGN CV0($a) T5
0003 ASSIGN CV1($message) string("safe")
0004 T8 = DECLARE_LAMBDA_FUNCTION 0
0005 BIND_LEXICAL T8 CV1($message)
0006 ASSIGN CV2($example) T8
0007 ASSIGN CV1($message) CV0($a)
0008 INIT_DYNAMIC_CALL 0 CV2($example)
0009 V11 = DO_FCALL
0010 ASSIGN CV3($b) V11
0011 ECHO CV3($b)
0012 RETURN int(1)
LIVE RANGES:
     8: 0005 - 0006 (tmp/var)

{closure}:
     ; (lines=3, args=0, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/20_use_with_closures/1_instance_20_use_with_closures/1_instance_20_use_with_closures.php:5-10
     ; return  [] RANGE[0..0]
0000 BIND_STATIC CV0($message)
0001 RETURN CV0($message)
0002 RETURN null
