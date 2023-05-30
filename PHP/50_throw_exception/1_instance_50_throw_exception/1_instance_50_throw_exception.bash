
$_main:
     ; (lines=19, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/50_throw_exception/1_instance_50_throw_exception/1_instance_50_throw_exception.php:1-16
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 INIT_FCALL 2 176 string("inverse")
0004 SEND_VAL int(5) 1
0005 SEND_VAR CV0($b) 2
0006 DO_UCALL
0007 INIT_FCALL 2 176 string("inverse")
0008 SEND_VAL int(0) 1
0009 SEND_VAR CV0($b) 2
0010 DO_UCALL
0011 JMP 0018
0012 CV1($e) = CATCH string("Exception")
0013 ECHO string("Caught exception: ")
0014 INIT_METHOD_CALL 0 CV1($e) string("getMessage")
0015 V7 = DO_FCALL
0016 ECHO V7
0017 ECHO string("
")
0018 RETURN int(1)
EXCEPTION TABLE:
     0003, 0012, -, -

inverse:
     ; (lines=11, args=2, vars=2, tmps=4)
     ; (before optimizer)
     ; /.../PHP/50_throw_exception/1_instance_50_throw_exception/1_instance_50_throw_exception.php:2-7
     ; return  [] RANGE[0..0]
0000 CV0($x) = RECV 1
0001 CV1($b) = RECV 2
0002 T2 = BOOL_NOT CV0($x)
0003 JMPZ T2 0008
0004 V3 = NEW 1 string("Exception")
0005 SEND_VAR_EX CV1($b) 1
0006 DO_FCALL
0007 THROW V3
0008 T5 = DIV int(1) CV0($x)
0009 RETURN T5
0010 RETURN null
LIVE RANGES:
     3: 0005 - 0007 (new)
