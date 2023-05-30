
$_main:
     ; (lines=8, args=0, vars=2, tmps=4)
     ; (before optimizer)
     ; /.../PHP/65_system/2_instance_65_system/2_instance_65_system.php:1-3
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 2 112 string("exec")
0004 SEND_VAR CV0($a) 1
0005 SEND_REF CV1($val) 2
0006 DO_ICALL
0007 RETURN int(1)
