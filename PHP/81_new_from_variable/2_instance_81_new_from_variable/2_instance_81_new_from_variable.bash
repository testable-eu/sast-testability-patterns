
$_main:
     ; (lines=14, args=0, vars=3, tmps=11)
     ; (before optimizer)
     ; /.../PHP/81_new_from_variable/2_instance_81_new_from_variable/2_instance_81_new_from_variable.php:1-12
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 T6 = FETCH_R (global) string("_GET")
0004 T7 = FETCH_DIM_R T6 string("p2")
0005 ASSIGN CV1($t) T7
0006 V9 = FETCH_CLASS (exception) CV1($t)
0007 V10 = NEW 1 V9
0008 SEND_VAR_EX CV0($b) 1
0009 DO_FCALL
0010 ASSIGN CV2($obj) V10
0011 T13 = FETCH_OBJ_R CV2($obj) string("x")
0012 ECHO T13
0013 RETURN int(1)
LIVE RANGES:
     10: 0008 - 0010 (new)

class1::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/81_new_from_variable/2_instance_81_new_from_variable/2_instance_81_new_from_variable.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($y) = RECV 1
0001 ASSIGN_OBJ THIS string("x")
0002 OP_DATA CV0($y)
0003 RETURN null
