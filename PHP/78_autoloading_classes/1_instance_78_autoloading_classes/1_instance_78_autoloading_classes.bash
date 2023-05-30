
$_main:
     ; (lines=12, args=0, vars=2, tmps=8)
     ; (before optimizer)
     ; /.../PHP/78_autoloading_classes/1_instance_78_autoloading_classes/1_instance_78_autoloading_classes.php:1-14
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 1 96 string("spl_autoload_register")
0001 T2 = DECLARE_LAMBDA_FUNCTION 0
0002 SEND_VAL T2 1
0003 DO_ICALL
0004 T4 = FETCH_R (global) string("_GET")
0005 T5 = FETCH_DIM_R T4 string("p1")
0006 ASSIGN CV0($a) T5
0007 V7 = NEW 1 string("MyClass1")
0008 SEND_VAR_EX CV0($a) 1
0009 DO_FCALL
0010 ASSIGN CV1($obj) V7
0011 RETURN int(1)
LIVE RANGES:
     7: 0008 - 0010 (new)

{closure}:
     ; (lines=5, args=1, vars=1, tmps=3)
     ; (before optimizer)
     ; /.../PHP/78_autoloading_classes/1_instance_78_autoloading_classes/1_instance_78_autoloading_classes.php:2-4
     ; return  [] RANGE[0..0]
0000 CV0($class_name) = RECV 1
0001 T1 = CONCAT string("./") CV0($class_name)
0002 T2 = CONCAT T1 string(".php")
0003 INCLUDE_OR_EVAL (include) T2
0004 RETURN null

MyClass1::__construct:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/78_autoloading_classes/1_instance_78_autoloading_classes/1_instance_78_autoloading_classes.php:10-12
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ECHO CV0($b)
0002 RETURN null
