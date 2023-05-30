
$_main:
     ; (lines=9, args=0, vars=2, tmps=4)
     ; (before optimizer)
     ; /.../PHP/9_reference_argument/1_instance_9_reference_argument/1_instance_9_reference_argument.php:1-10
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 2 128 string("foo")
0004 SEND_REF CV1($b) 1
0005 SEND_VAR CV0($a) 2
0006 DO_UCALL
0007 ECHO CV1($b)
0008 RETURN int(1)

foo:
     ; (lines=4, args=2, vars=2, tmps=1)
     ; (before optimizer)
     ; /.../PHP/9_reference_argument/1_instance_9_reference_argument/1_instance_9_reference_argument.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($var) = RECV 1
0001 CV1($input) = RECV 2
0002 ASSIGN CV0($var) CV1($input)
0003 RETURN null
