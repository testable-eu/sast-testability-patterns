
$_main:
     ; (lines=10, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/52_try_catch_finally/1_instance_52_try_catch_finally/1_instance_52_try_catch_finally.php:1-22
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 INIT_FCALL 1 240 string("foo")
0004 T5 = CONCAT CV0($b) string("
")
0005 SEND_VAL T5 1
0006 V6 = DO_UCALL
0007 ASSIGN CV1($a) V6
0008 ECHO CV1($a)
0009 RETURN int(1)

foo:
     ; (lines=21, args=1, vars=3, tmps=7)
     ; (before optimizer)
     ; /.../PHP/52_try_catch_finally/1_instance_52_try_catch_finally/1_instance_52_try_catch_finally.php:2-15
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 ASSIGN CV1($bar) CV0($b)
0002 V5 = NEW 1 string("Exception")
0003 SEND_VAL_EX string("Exception") 1
0004 DO_FCALL
0005 THROW V5
0006 JMP 0012
0007 CV2($e) = CATCH string("Exception")
0008 ECHO string("catch 
")
0009 T7 = QM_ASSIGN CV1($bar)
0010 T4 = FAST_CALL 0014 T7
0011 RETURN T7
0012 T4 = FAST_CALL 0014
0013 JMP 0020
0014 ECHO string("finally 
")
0015 INIT_FCALL 1 96 string("htmlspecialchars")
0016 SEND_VAR CV1($bar) 1
0017 V8 = DO_ICALL
0018 ASSIGN CV1($bar) V8
0019 FAST_RET T4
0020 RETURN null
LIVE RANGES:
     5: 0003 - 0005 (new)
     7: 0010 - 0011 (tmp/var)
EXCEPTION TABLE:
     0002, 0007, 0014, 0019