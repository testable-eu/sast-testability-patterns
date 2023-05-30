
$_main:
     ; (lines=13, args=0, vars=2, tmps=8)
     ; (before optimizer)
     ; /.../PHP/77_object_callable/1_instance_77_object_callable/1_instance_77_object_callable.php:1-15
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 1 string("Foo")
0004 SEND_VAR_EX CV0($b) 1
0005 DO_FCALL
0006 T7 = INIT_ARRAY 2 (packed) V5 NEXT
0007 T7 = ADD_ARRAY_ELEMENT string("baz") NEXT
0008 INIT_DYNAMIC_CALL 0 T7
0009 V8 = DO_FCALL
0010 ASSIGN CV1($a) V8
0011 ECHO CV1($a)
0012 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0006 (new)
     7: 0007 - 0008 (tmp/var)

Foo::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/77_object_callable/1_instance_77_object_callable/1_instance_77_object_callable.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_STATIC_PROP string("x")
0002 OP_DATA CV0($b)
0003 RETURN null

Foo::baz:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/77_object_callable/1_instance_77_object_callable/1_instance_77_object_callable.php:7-9
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_STATIC_PROP_R string("x") (self) (exception)
0001 RETURN T0
0002 RETURN null
