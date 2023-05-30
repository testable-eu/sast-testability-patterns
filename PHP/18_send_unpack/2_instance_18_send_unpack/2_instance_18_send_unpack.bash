
$_main:
     ; (lines=13, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/18_send_unpack/2_instance_18_send_unpack/2_instance_18_send_unpack.php:1-10
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 T6 = INIT_ARRAY 2 (packed) int(1) NEXT
0004 T6 = ADD_ARRAY_ELEMENT CV0($b) NEXT
0005 ASSIGN CV1($a) T6
0006 INIT_FCALL 0 112 string("add")
0007 SEND_UNPACK CV1($a)
0008 CHECK_UNDEF_ARGS
0009 V8 = DO_UCALL
0010 ASSIGN CV2($c) V8
0011 ECHO CV2($c)
0012 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0005 (tmp/var)

add:
     ; (lines=4, args=2, vars=2, tmps=0)
     ; (before optimizer)
     ; /.../PHP/18_send_unpack/2_instance_18_send_unpack/2_instance_18_send_unpack.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 CV1($b) = RECV 2
0002 RETURN CV1($b)
0003 RETURN null
