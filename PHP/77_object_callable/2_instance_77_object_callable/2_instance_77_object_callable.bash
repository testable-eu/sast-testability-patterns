
$_main:
     ; (lines=17, args=0, vars=3, tmps=12)
     ; (before optimizer)
     ; /.../PHP/77_object_callable/2_instance_77_object_callable/2_instance_77_object_callable.php:1-16
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 T6 = FETCH_R (global) string("_GET")
0004 T7 = FETCH_DIM_R T6 string("p1")
0005 ASSIGN CV1($c) T7
0006 V9 = FETCH_CLASS (exception) CV1($c)
0007 V10 = NEW 1 V9
0008 SEND_VAR_EX CV0($b) 1
0009 DO_FCALL
0010 T12 = INIT_ARRAY 2 (packed) V10 NEXT
0011 T12 = ADD_ARRAY_ELEMENT string("baz") NEXT
0012 INIT_DYNAMIC_CALL 0 T12
0013 V13 = DO_FCALL
0014 ASSIGN CV2($a) V13
0015 ECHO CV2($a)
0016 RETURN int(1)
LIVE RANGES:
     10: 0008 - 0010 (new)
     12: 0011 - 0012 (tmp/var)

Foo::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/77_object_callable/2_instance_77_object_callable/2_instance_77_object_callable.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_STATIC_PROP string("x")
0002 OP_DATA CV0($b)
0003 RETURN null

Foo::baz:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/77_object_callable/2_instance_77_object_callable/2_instance_77_object_callable.php:7-9
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_STATIC_PROP_R string("x") (self) (exception)
0001 RETURN T0
0002 RETURN null
