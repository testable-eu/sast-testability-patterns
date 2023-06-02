
$_main:
     ; (lines=16, args=0, vars=4, tmps=13)
     ; (before optimizer)
     ; /.../PHP/81_new_from_variable/3_instance_81_new_from_variable/3_instance_81_new_from_variable.php:1-13
     ; return  [] RANGE[0..0]
0000 T4 = FETCH_R (global) string("_GET")
0001 T5 = FETCH_DIM_R T4 string("p1")
0002 ASSIGN CV0($b) T5
0003 T7 = FETCH_R (global) string("_GET")
0004 T8 = FETCH_DIM_R T7 string("p2")
0005 ASSIGN CV1($bb) T8
0006 T10 = CONCAT string("class") CV1($bb)
0007 ASSIGN CV2($t) T10
0008 V12 = FETCH_CLASS (exception) CV2($t)
0009 V13 = NEW 1 V12
0010 SEND_VAR_EX CV0($b) 1
0011 DO_FCALL
0012 ASSIGN CV3($obj) V13
0013 T16 = FETCH_OBJ_R CV3($obj) string("x")
0014 ECHO T16
0015 RETURN int(1)
LIVE RANGES:
     13: 0010 - 0012 (new)

class1::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/81_new_from_variable/3_instance_81_new_from_variable/3_instance_81_new_from_variable.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($y) = RECV 1
0001 ASSIGN_OBJ THIS string("x")
0002 OP_DATA CV0($y)
0003 RETURN null
