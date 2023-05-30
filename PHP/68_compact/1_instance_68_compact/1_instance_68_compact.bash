
$_main:
     ; (lines=13, args=0, vars=5, tmps=9)
     ; (before optimizer)
     ; /.../PHP/68_compact/1_instance_68_compact/1_instance_68_compact.php:1-9
     ; return  [] RANGE[0..0]
0000 T5 = FETCH_R (global) string("_GET")
0001 T6 = FETCH_DIM_R T5 string("p1")
0002 ASSIGN CV0($a) T6
0003 ASSIGN CV1($city) string("San Francisco")
0004 ASSIGN CV2($state) string("CA")
0005 ASSIGN CV3($event) CV0($a)
0006 INIT_FCALL 1 96 string("compact")
0007 SEND_VAL array(...) 1
0008 V11 = DO_ICALL
0009 ASSIGN CV4($result) V11
0010 T13 = FETCH_DIM_R CV4($result) string("event")
0011 ECHO T13
0012 RETURN int(1)
