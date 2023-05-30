
$_main:
     ; (lines=8, args=0, vars=3, tmps=6)
     ; (before optimizer)
     ; /.../PHP/8_simple_reference/1_instance_8_simple_reference/1_instance_8_simple_reference.php:1-7
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 ASSIGN CV1($foo) string("Bob")
0004 ASSIGN_REF CV2($bar) CV1($foo)
0005 ASSIGN CV2($bar) CV0($a)
0006 ECHO CV1($foo)
0007 RETURN int(1)
