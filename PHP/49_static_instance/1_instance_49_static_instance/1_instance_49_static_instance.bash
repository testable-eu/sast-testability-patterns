
$_main:
     ; (lines=14, args=0, vars=2, tmps=8)
     ; (before optimizer)
     ; /.../PHP/49_static_instance/1_instance_49_static_instance/1_instance_49_static_instance.php:1-17
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 INIT_STATIC_METHOD_CALL 0 string("Myclass") string("oneInstance")
0004 V5 = DO_UCALL
0005 V5 = SEPARATE V5
0006 ASSIGN_OBJ V5 string("x")
0007 OP_DATA CV0($b)
0008 INIT_STATIC_METHOD_CALL 0 string("Myclass") string("oneInstance")
0009 V7 = DO_UCALL
0010 T8 = FETCH_OBJ_R V7 string("x")
0011 ASSIGN CV1($a) T8
0012 ECHO CV1($a)
0013 RETURN int(1)

Myclass::oneInstance:
     ; (lines=11, args=0, vars=0, tmps=7)
     ; (before optimizer)
     ; /.../PHP/49_static_instance/1_instance_49_static_instance/1_instance_49_static_instance.php:6-11
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_STATIC_PROP_R string("instance") (self) (exception)
0001 T1 = INSTANCEOF T0 (self) (no-autoload) (silent) (exception)
0002 T2 = BOOL_NOT T1
0003 JMPZ T2 0008
0004 V4 = NEW 0 (self) (exception)
0005 DO_FCALL
0006 ASSIGN_STATIC_PROP string("instance")
0007 OP_DATA V4
0008 T6 = FETCH_STATIC_PROP_R string("instance") (self) (exception)
0009 RETURN T6
0010 RETURN null
LIVE RANGES:
     4: 0005 - 0006 (new)
