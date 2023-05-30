
$_main:
     ; (lines=11, args=0, vars=2, tmps=7)
     ; (before optimizer)
     ; /.../PHP/55_goto/1_instance_55_goto/1_instance_55_goto.php:1-12
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($b) string("abcde")
0001 ASSIGN CV1($cond) int(1)
0002 ECHO CV0($b)
0003 T4 = FETCH_R (global) string("_GET")
0004 T5 = FETCH_DIM_R T4 string("p1")
0005 ASSIGN CV0($b) T5
0006 T7 = IS_EQUAL CV1($cond) int(1)
0007 JMPZ T7 0010
0008 ASSIGN CV1($cond) int(0)
0009 JMP 0002
0010 RETURN int(1)
