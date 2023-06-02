
$_main:
     ; (lines=7, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /.../PHP/65_system/3_instance_65_system/3_instance_65_system.php:1-3
     ; return  [] RANGE[0..0]
0000 T1 = FETCH_R (global) string("_GET")
0001 T2 = FETCH_DIM_R T1 string("p1")
0002 ASSIGN CV0($a) T2
0003 INIT_FCALL 1 96 string("unlink")
0004 SEND_VAR CV0($a) 1
0005 DO_ICALL
0006 RETURN int(1)
