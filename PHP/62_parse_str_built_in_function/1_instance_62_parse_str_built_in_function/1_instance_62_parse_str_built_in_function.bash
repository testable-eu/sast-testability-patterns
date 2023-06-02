
$_main:
     ; (lines=13, args=0, vars=4, tmps=7)
     ; (before optimizer)
     ; /.../PHP/62_parse_str_built_in_function/1_instance_62_parse_str_built_in_function/1_instance_62_parse_str_built_in_function.php:1-8
     ; return  [] RANGE[0..0]
0000 T4 = FETCH_R (global) string("_GET")
0001 T5 = FETCH_DIM_R T4 string("p1")
0002 ASSIGN CV0($b) T5
0003 ASSIGN CV1($str) CV0($b)
0004 INIT_FCALL 1 96 string("parse_str")
0005 SEND_VAR CV1($str) 1
0006 DO_ICALL
0007 ECHO CV2($first)
0008 T9 = FETCH_DIM_R CV3($arr) int(0)
0009 ECHO T9
0010 T10 = FETCH_DIM_R CV3($arr) int(1)
0011 ECHO T10
0012 RETURN int(1)
