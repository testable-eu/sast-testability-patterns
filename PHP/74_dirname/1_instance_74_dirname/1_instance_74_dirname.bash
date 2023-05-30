
$_main:
     ; (lines=12, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/74_dirname/1_instance_74_dirname/1_instance_74_dirname.php:1-9
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 INIT_FCALL 1 96 string("dirname")
0004 SEND_VAL string("/.../PHP/74_dirname/1_instance_74_dirname/1_instance_74_dirname.php") 1
0005 V6 = DO_ICALL
0006 ASSIGN CV1($dirroot) V6
0007 T8 = CONCAT CV1($dirroot) string("/_includes")
0008 ASSIGN CV2($dirinc) T8
0009 T10 = CONCAT CV2($dirinc) string("/1_instance_74_dirname_1.php")
0010 INCLUDE_OR_EVAL (include) T10
0011 RETURN int(1)
