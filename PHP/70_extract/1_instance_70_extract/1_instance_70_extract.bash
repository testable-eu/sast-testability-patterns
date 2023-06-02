
$_main:
     ; (lines=11, args=0, vars=3, tmps=6)
     ; (before optimizer)
     ; /.../PHP/70_extract/1_instance_70_extract/1_instance_70_extract.php:1-5
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 T6 = INIT_ARRAY 2 CV0($b) string("A")
0004 T6 = ADD_ARRAY_ELEMENT string("BBB") string("B")
0005 ASSIGN CV1($arr) T6
0006 INIT_FCALL 1 96 string("extract")
0007 SEND_REF CV1($arr) 1
0008 DO_ICALL
0009 ECHO CV2($A)
0010 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0005 (tmp/var)
