
$_main:
     ; (lines=9, args=0, vars=1, tmps=6)
     ; (before optimizer)
     ; /.../PHP/13_assign_static_prop_ref/1_instance_13_assign_static_prop_ref/1_instance_13_assign_static_prop_ref.php:1-9
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($y) string("abc")
0001 ASSIGN_STATIC_PROP_REF string("sprop") string("myclass")
0002 OP_DATA CV0($y)
0003 T3 = FETCH_R (global) string("_GET")
0004 T4 = FETCH_DIM_R T3 string("p1")
0005 ASSIGN CV0($y) T4
0006 T6 = FETCH_STATIC_PROP_R string("sprop") string("myclass")
0007 ECHO T6
0008 RETURN int(1)
