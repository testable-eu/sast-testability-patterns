
$_main:
     ; (lines=12, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/81_new_from_variable/1_instance_81_new_from_variable/1_instance_81_new_from_variable.php:1-12
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 ASSIGN CV1($t) string("class1")
0004 V7 = FETCH_CLASS (exception) CV1($t)
0005 V8 = NEW 1 V7
0006 SEND_VAR_EX CV0($b) 1
0007 DO_FCALL
0008 ASSIGN CV2($obj) V8
0009 T11 = FETCH_OBJ_R CV2($obj) string("x")
0010 ECHO T11
0011 RETURN int(1)
LIVE RANGES:
     8: 0006 - 0008 (new)

class1::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/81_new_from_variable/1_instance_81_new_from_variable/1_instance_81_new_from_variable.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($y) = RECV 1
0001 ASSIGN_OBJ THIS string("x")
0002 OP_DATA CV0($y)
0003 RETURN null
