
$_main:
     ; (lines=14, args=0, vars=2, tmps=8)
     ; (before optimizer)
     ; /.../PHP/53_track_error/1_instance_53_track_error/1_instance_53_track_error.php:1-5
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 T5 = BEGIN_SILENCE
0004 INIT_FCALL 1 96 string("trigger_error")
0005 SEND_VAR CV0($a) 1
0006 DO_ICALL
0007 END_SILENCE T5
0008 INIT_FCALL 0 80 string("error_get_last")
0009 V7 = DO_ICALL
0010 ASSIGN CV1($e) V7
0011 T9 = FETCH_DIM_R CV1($e) string("message")
0012 ECHO T9
0013 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0007 (silence)
