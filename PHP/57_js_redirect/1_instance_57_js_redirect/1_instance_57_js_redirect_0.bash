
$_main:
     ; (lines=6, args=0, vars=0, tmps=3)
     ; (before optimizer)
     ; /.../PHP/57_js_redirect/1_instance_57_js_redirect/1_instance_57_js_redirect_0.php:1-4
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 0 80 string("session_start")
0001 DO_ICALL
0002 T1 = FETCH_R (global) string("_SESSION")
0003 T2 = FETCH_DIM_R T1 string("abc")
0004 ECHO T2
0005 RETURN int(1)
