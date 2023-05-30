
$_main:
     ; (lines=11, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/73_wrong_sanitizer/1_instance_73_wrong_sanitizer/1_instance_73_wrong_sanitizer.php:1-8
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p")
0002 ASSIGN CV0($x) T3
0003 INIT_FCALL 1 96 string("strip_tags")
0004 SEND_VAR CV0($x) 1
0005 V5 = DO_ICALL
0006 ASSIGN CV1($y) V5
0007 ECHO string("
<input type="hidden" name="return" value="")
0008 ECHO CV1($y)
0009 ECHO string("" /> // sink")
0010 RETURN int(1)
