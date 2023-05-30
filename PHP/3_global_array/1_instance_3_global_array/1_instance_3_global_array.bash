
$_main:
     ; (lines=8, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/3_global_array/1_instance_3_global_array/1_instance_3_global_array.php:1-9
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 0 96 string("f")
0004 V5 = DO_UCALL
0005 ASSIGN CV1($b) V5
0006 ECHO CV1($b)
0007 RETURN int(1)

F:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /.../PHP/3_global_array/1_instance_3_global_array/1_instance_3_global_array.php:2-4
     ; return  [] RANGE[0..0]
0000 T0 = FETCH_R (global) string("a")
0001 RETURN T0
0002 RETURN null
