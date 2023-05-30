
$_main:
     ; (lines=12, args=0, vars=3, tmps=6)
     ; (before optimizer)
     ; /.../PHP/63_substring_replace_built_in_function/1_instance_63_substring_replace_built_in_function/1_instance_63_substring_replace_built_in_function.php:1-7
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($var) string("ABCDEFGH:/MNRPQR/")
0001 T4 = FETCH_R (global) string("_GET")
0002 T5 = FETCH_DIM_R T4 string("p1")
0003 ASSIGN CV1($b) T5
0004 INIT_FCALL 3 128 string("substr_replace")
0005 SEND_VAR CV0($var) 1
0006 SEND_VAR CV1($b) 2
0007 SEND_VAL int(0) 3
0008 V7 = DO_ICALL
0009 ASSIGN CV2($a) V7
0010 ECHO CV2($a)
0011 RETURN int(1)
