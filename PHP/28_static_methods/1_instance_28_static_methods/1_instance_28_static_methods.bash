
$_main:
     ; (lines=9, args=0, vars=1, tmps=5)
     ; (before optimizer)
     ; /.../PHP/28_static_methods/1_instance_28_static_methods/1_instance_28_static_methods.php:1-15
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN_STATIC_PROP string("b") string("Foo")
0003 OP_DATA T3
0004 INIT_STATIC_METHOD_CALL 0 string("Foo") string("baz")
0005 V4 = DO_UCALL
0006 ASSIGN CV0($a) V4
0007 ECHO CV0($a)
0008 RETURN int(1)

Foo::__construct:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /.../PHP/28_static_methods/1_instance_28_static_methods/1_instance_28_static_methods.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN_STATIC_PROP string("b")
0002 OP_DATA CV0($b)
0003 RETURN null

Foo::baz:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/28_static_methods/1_instance_28_static_methods/1_instance_28_static_methods.php:7-10
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_STATIC_PROP_R string("b") (self) (exception)
0001 RETURN T0
0002 RETURN null
