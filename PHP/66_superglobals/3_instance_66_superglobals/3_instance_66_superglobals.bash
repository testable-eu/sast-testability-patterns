
$_main:
     ; (lines=5, args=0, vars=1, tmps=3)
     ; (before optimizer)
     ; /.../PHP/66_superglobals/3_instance_66_superglobals/3_instance_66_superglobals.php:1-3
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_ENV")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN CV0($a) T2
0003 ECHO CV0($a)
0004 RETURN int(1)
