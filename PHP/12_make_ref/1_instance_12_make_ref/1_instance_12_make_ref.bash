
$_main:
     ; (lines=12, args=0, vars=1, tmps=9)
     ; (before optimizer)
     ; /.../PHP/12_make_ref/1_instance_12_make_ref/1_instance_12_make_ref.php:1-5
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($arr) array(...)
0001 V3 = FETCH_DIM_W CV0($arr) int(3)
0002 V4 = MAKE_REF V3
0003 V2 = FETCH_DIM_W CV0($arr) int(1)
0004 ASSIGN_REF V2 V4
0005 T7 = FETCH_R (global) string("_GET")
0006 T8 = FETCH_DIM_R T7 string("p1")
0007 ASSIGN_DIM CV0($arr) int(3)
0008 OP_DATA T8
0009 T9 = FETCH_DIM_R CV0($arr) int(1)
0010 ECHO T9
0011 RETURN int(1)
LIVE RANGES:
     4: 0003 - 0004 (tmp/var)
