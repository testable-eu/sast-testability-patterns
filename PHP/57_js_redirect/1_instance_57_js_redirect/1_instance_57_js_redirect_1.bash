
$_main:
     ; (lines=9, args=0, vars=0, tmps=5)
     ; (before optimizer)
     ; /.../PHP/57_js_redirect/1_instance_57_js_redirect/1_instance_57_js_redirect_1.php:1-7
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 0 80 string("session_start")
0001 DO_ICALL
0002 T3 = FETCH_R (global) string("_GET")
0003 T4 = FETCH_DIM_R T3 string("p1")
0004 V1 = FETCH_W (global) string("_SESSION")
0005 ASSIGN_DIM V1 string("abc")
0006 OP_DATA T4
0007 ECHO string("<script> window.location='1_instance_57_js_redirect_0.php' </script>")
0008 RETURN int(1)
LIVE RANGES:
     4: 0004 - 0005 (tmp/var)
