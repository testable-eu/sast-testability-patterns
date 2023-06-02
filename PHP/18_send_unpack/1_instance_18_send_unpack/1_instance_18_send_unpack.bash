
$_main:
     ; (lines=11, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/18_send_unpack/1_instance_18_send_unpack/1_instance_18_send_unpack.php:1-11
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 T5 = INIT_ARRAY 2 (packed) int(1) NEXT
0004 T5 = ADD_ARRAY_ELEMENT CV0($b) NEXT
0005 ASSIGN CV1($a) T5
0006 INIT_FCALL 0 112 string("add")
0007 SEND_UNPACK CV1($a)
0008 CHECK_UNDEF_ARGS
0009 DO_UCALL
0010 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0005 (tmp/var)

add:
     ; (lines=5, args=2, vars=2, tmps=0)
     ; (before optimizer)
     ; /.../PHP/18_send_unpack/1_instance_18_send_unpack/1_instance_18_send_unpack.php:3-7
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 CV1($b) = RECV 2
0002 ECHO CV0($a)
0003 ECHO CV1($b)
0004 RETURN null
