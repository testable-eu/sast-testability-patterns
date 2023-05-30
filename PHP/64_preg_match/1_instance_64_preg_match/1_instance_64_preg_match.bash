
$_main:
     ; (lines=11, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/64_preg_match/1_instance_64_preg_match/1_instance_64_preg_match.php:1-5
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 INIT_FCALL 3 128 string("preg_match")
0004 SEND_VAL string("/[^\s]+/") 1
0005 SEND_VAR CV0($b) 2
0006 SEND_REF CV1($matches) 3
0007 DO_ICALL
0008 T6 = FETCH_DIM_R CV1($matches) int(0)
0009 ECHO T6
0010 RETURN int(1)
