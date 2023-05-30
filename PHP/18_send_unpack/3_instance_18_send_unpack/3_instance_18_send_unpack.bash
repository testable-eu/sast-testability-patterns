
$_main:
     ; (lines=10, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/18_send_unpack/3_instance_18_send_unpack/3_instance_18_send_unpack.php:1-9
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 INIT_FCALL 2 112 string("add")
0004 SEND_VAL int(1) 1
0005 SEND_VAR CV0($b) 2
0006 V5 = DO_UCALL
0007 ASSIGN CV1($c) V5
0008 ECHO CV1($c)
0009 RETURN int(1)

add:
     ; (lines=4, args=2, vars=2, tmps=0)
     ; (before optimizer)
     ; /.../PHP/18_send_unpack/3_instance_18_send_unpack/3_instance_18_send_unpack.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 CV1($b) = RECV 2
0002 RETURN CV1($b)
0003 RETURN null
