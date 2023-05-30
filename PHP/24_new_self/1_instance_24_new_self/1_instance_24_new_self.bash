
$_main:
     ; (lines=8, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/24_new_self/1_instance_24_new_self/1_instance_24_new_self.php:1-22
     ; return  [] RANGE[0..0]
0000 V2 = NEW 0 string("myclass")
0001 DO_FCALL
0002 ASSIGN CV0($obj) V2
0003 INIT_METHOD_CALL 0 CV0($obj) string("F")
0004 V5 = DO_FCALL
0005 ASSIGN CV1($a) V5
0006 ECHO CV1($a)
0007 RETURN int(1)
LIVE RANGES:
     2: 0001 - 0002 (new)

myclass::__construct:
     ; (lines=5, args=0, vars=0, tmps=3)
     ; (before optimizer)
     ; /.../PHP/24_new_self/1_instance_24_new_self/1_instance_24_new_self.php:4-6
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_GET")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN_OBJ THIS string("b")
0003 OP_DATA T2
0004 RETURN null

myclass::F:
     ; (lines=7, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /.../PHP/24_new_self/1_instance_24_new_self/1_instance_24_new_self.php:8-11
     ; return  [] RANGE[0..0]
0000 V1 = NEW 0 (self) (exception)
0001 DO_FCALL
0002 ASSIGN CV0($obj2) V1
0003 INIT_METHOD_CALL 0 CV0($obj2) string("T")
0004 V4 = DO_FCALL
0005 RETURN V4
0006 RETURN null
LIVE RANGES:
     1: 0001 - 0002 (new)

myclass::T:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/24_new_self/1_instance_24_new_self/1_instance_24_new_self.php:13-15
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_OBJ_R THIS string("b")
0001 RETURN T0
0002 RETURN null
