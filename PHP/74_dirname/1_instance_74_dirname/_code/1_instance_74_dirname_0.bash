
$_main:
     ; (lines=15, args=0, vars=3, tmps=10)
     ; (before optimizer)
     ; /.../PHP/74_dirname/1_instance_74_dirname/_code/1_instance_74_dirname_0.php:1-8
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 INIT_FCALL 1 96 string("dirname")
0004 INIT_FCALL 1 96 string("dirname")
0005 SEND_VAL string("/.../PHP/74_dirname/1_instance_74_dirname/_code/1_instance_74_dirname_0.php") 1
0006 V6 = DO_ICALL
0007 SEND_VAR V6 1
0008 V7 = DO_ICALL
0009 ASSIGN CV1($dirroot) V7
0010 T9 = CONCAT CV1($dirroot) string("/_includes")
0011 ASSIGN CV2($dirinc) T9
0012 T11 = CONCAT CV2($dirinc) string("/1_instance_74_dirname_1.php")
0013 INCLUDE_OR_EVAL (include) T11
0014 RETURN int(1)
