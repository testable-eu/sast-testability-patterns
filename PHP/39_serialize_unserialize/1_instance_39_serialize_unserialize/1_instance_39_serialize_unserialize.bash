
$_main:
     ; (lines=20, args=0, vars=5, tmps=12)
     ; (before optimizer)
     ; /.../PHP/39_serialize_unserialize/1_instance_39_serialize_unserialize/1_instance_39_serialize_unserialize.php:1-20
     ; return  [] RANGE[0..0]
0000 T5 = FETCH_R (global) string("_GET")
0001 T6 = FETCH_DIM_R T5 string("p1")
0002 ASSIGN CV0($b) T6
0003 V8 = NEW 1 string("A")
0004 SEND_VAR_EX CV0($b) 1
0005 DO_FCALL
0006 ASSIGN CV1($a) V8
0007 INIT_FCALL 1 96 string("serialize")
0008 SEND_VAR CV1($a) 1
0009 V11 = DO_ICALL
0010 ASSIGN CV2($s) V11
0011 INIT_FCALL 1 96 string("unserialize")
0012 SEND_VAR CV2($s) 1
0013 V13 = DO_ICALL
0014 ASSIGN CV3($h) V13
0015 INIT_METHOD_CALL 0 CV3($h) string("show_one")
0016 V15 = DO_FCALL
0017 ASSIGN CV4($c) V15
0018 ECHO CV4($c)
0019 RETURN int(1)
LIVE RANGES:
     8: 0004 - 0006 (new)

A::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/39_serialize_unserialize/1_instance_39_serialize_unserialize/1_instance_39_serialize_unserialize.php:5-7
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_OBJ THIS string("one")
0002 OP_DATA CV0($b)
0003 RETURN null

A::show_one:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/39_serialize_unserialize/1_instance_39_serialize_unserialize/1_instance_39_serialize_unserialize.php:9-11
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_OBJ_R THIS string("one")
0001 RETURN T0
0002 RETURN null
