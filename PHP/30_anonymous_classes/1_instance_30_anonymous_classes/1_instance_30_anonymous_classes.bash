
$_main:
     ; (lines=13, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/30_anonymous_classes/1_instance_30_anonymous_classes/1_instance_30_anonymous_classes.php:1-10
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 V6 = DECLARE_ANON_CLASS string("class@anonymous")
0004 V7 = NEW 0 V6
0005 DO_FCALL
0006 ASSIGN CV1($util) V7
0007 INIT_METHOD_CALL 1 CV1($util) string("log")
0008 SEND_VAR_EX CV0($b) 1
0009 V10 = DO_FCALL
0010 ASSIGN CV2($a) V10
0011 ECHO CV2($a)
0012 RETURN int(1)
LIVE RANGES:
     7: 0005 - 0006 (new)

class@anonymous::log:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/30_anonymous_classes/1_instance_30_anonymous_classes/1_instance_30_anonymous_classes.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($msg) = RECV 1
0001 RETURN CV0($msg)
0002 RETURN null
