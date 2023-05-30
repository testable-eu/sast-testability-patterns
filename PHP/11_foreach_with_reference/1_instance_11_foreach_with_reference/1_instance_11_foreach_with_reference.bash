
$_main:
     ; (lines=12, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/11_foreach_with_reference/1_instance_11_foreach_with_reference/1_instance_11_foreach_with_reference.php:1-11
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($arr) array(...)
0001 T4 = FETCH_R (global) string("_GET")
0002 T5 = FETCH_DIM_R T4 string("p1")
0003 ASSIGN CV1($a) T5
0004 V7 = FE_RESET_RW CV0($arr) 0008
0005 FE_FETCH_RW V7 CV2($x) 0008
0006 ASSIGN CV2($x) CV1($a)
0007 JMP 0005
0008 FE_FREE V7
0009 T9 = FETCH_DIM_R CV0($arr) int(0)
0010 ECHO T9
0011 RETURN int(1)
LIVE RANGES:
     7: 0005 - 0008 (loop)
