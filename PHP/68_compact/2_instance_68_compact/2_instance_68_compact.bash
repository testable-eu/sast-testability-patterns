
$_main:
     ; (lines=18, args=0, vars=7, tmps=13)
     ; (before optimizer)
     ; /.../PHP/68_compact/2_instance_68_compact/2_instance_68_compact.php:1-9
     ; return  [] RANGE[0..0]
0000 T7 = FETCH_R (global) string("_GET")
0001 T8 = FETCH_DIM_R T7 string("p1")
0002 ASSIGN CV0($a) T8
0003 ASSIGN CV1($city) string("San Francisco")
0004 ASSIGN CV2($state) string("CA")
0005 ASSIGN CV3($event) CV0($a)
0006 T13 = FETCH_R (global) string("_GET")
0007 T14 = FETCH_DIM_R T13 string("p2")
0008 ASSIGN CV4($x) T14
0009 ASSIGN CV5($location_vars) array(...)
0010 INIT_FCALL 2 112 string("compact")
0011 SEND_VAR CV4($x) 1
0012 SEND_VAR CV5($location_vars) 2
0013 V17 = DO_ICALL
0014 ASSIGN CV6($result) V17
0015 T19 = FETCH_DIM_R CV6($result) string("event")
0016 ECHO T19
0017 RETURN int(1)
