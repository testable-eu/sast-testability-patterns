
$_main:
     ; (lines=12, args=0, vars=3, tmps=8)
     ; (before optimizer)
     ; /.../PHP/29_static_properties/1_instance_29_static_properties/1_instance_29_static_properties.php:1-15
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 V6 = NEW 1 string("Foo")
0004 SEND_VAR_EX CV0($b) 1
0005 DO_FCALL
0006 ASSIGN CV1($ob) V6
0007 INIT_METHOD_CALL 0 CV1($ob) string("baz")
0008 V9 = DO_FCALL
0009 ASSIGN CV2($a) V9
0010 ECHO CV2($a)
0011 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0006 (new)

Foo::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/29_static_properties/1_instance_29_static_properties/1_instance_29_static_properties.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_STATIC_PROP string("b")
0002 OP_DATA CV0($b)
0003 RETURN null

Foo::baz:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/29_static_properties/1_instance_29_static_properties/1_instance_29_static_properties.php:7-10
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_STATIC_PROP_R string("b") (self) (exception)
0001 RETURN T0
0002 RETURN null
