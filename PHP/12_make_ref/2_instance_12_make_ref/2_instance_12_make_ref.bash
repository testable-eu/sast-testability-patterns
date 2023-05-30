
$_main:
     ; (lines=12, args=0, vars=1, tmps=9)
     ; (before optimizer)
     ; /.../PHP/12_make_ref/2_instance_12_make_ref/2_instance_12_make_ref.php:1-5
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($arr) array(...)
0001 T3 = FETCH_R (global) string("_GET")
0002 T4 = FETCH_DIM_R T3 string("p1")
0003 ASSIGN_DIM CV0($arr) int(3)
0004 OP_DATA T4
0005 V6 = FETCH_DIM_W CV0($arr) int(3)
0006 V7 = MAKE_REF V6
0007 V5 = FETCH_DIM_W CV0($arr) int(1)
0008 ASSIGN_REF V5 V7
0009 T9 = FETCH_DIM_R CV0($arr) int(0)
0010 ECHO T9
0011 RETURN int(1)
LIVE RANGES:
     7: 0007 - 0008 (tmp/var)
