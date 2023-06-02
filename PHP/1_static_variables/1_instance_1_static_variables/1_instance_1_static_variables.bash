
$_main:
     ; (lines=10, args=0, vars=1, tmps=5)
     ; (before optimizer)
     ; /.../PHP/1_static_variables/1_instance_1_static_variables/1_instance_1_static_variables.php:1-11
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_GET")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN CV0($a) T2
0003 INIT_FCALL 1 128 string("f")
0004 SEND_VAR CV0($a) 1
0005 DO_UCALL
0006 INIT_FCALL 1 128 string("f")
0007 SEND_VAL string("abc") 1
0008 DO_UCALL
0009 RETURN int(1)

F:
     ; (lines=5, args=1, vars=2, tmps=1)
     ; (before optimizer)
     ; /.../PHP/1_static_variables/1_instance_1_static_variables/1_instance_1_static_variables.php:3-7
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 BIND_STATIC (ref) CV1($b)
0002 ECHO CV1($b)
0003 ASSIGN CV1($b) CV0($a)
0004 RETURN null
