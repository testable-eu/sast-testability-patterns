
$_main:
     ; (lines=8, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/42_destructor/1_instance_42_destructor/1_instance_42_destructor.php:1-16
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 1 string("BaseClass")
0004 SEND_VAR_EX CV0($b) 1
0005 DO_FCALL
0006 ASSIGN CV1($obj) V5
0007 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0006 (new)

BaseClass::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/42_destructor/1_instance_42_destructor/1_instance_42_destructor.php:5-7
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_OBJ THIS string("var")
0002 OP_DATA CV0($b)
0003 RETURN null

BaseClass::__destruct:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/42_destructor/1_instance_42_destructor/1_instance_42_destructor.php:8-10
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_OBJ_R THIS string("var")
0001 ECHO T0
0002 RETURN null
