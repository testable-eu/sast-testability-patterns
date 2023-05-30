
$_main:
     ; (lines=12, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/69_create_function/1_instance_69_create_function/1_instance_69_create_function.php:1-4
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($var) T3
0003 INIT_FCALL_BY_NAME 2 string("create_function")
0004 SEND_VAL_EX string("$a") 1
0005 SEND_VAL_EX string("echo $a;") 2
0006 V5 = DO_FCALL_BY_NAME
0007 ASSIGN CV1($newfunc) V5
0008 INIT_DYNAMIC_CALL 1 CV1($newfunc)
0009 SEND_VAR_EX CV0($var) 1
0010 DO_FCALL
0011 RETURN int(1)
