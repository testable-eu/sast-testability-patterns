
$_main:
     ; (lines=14, args=0, vars=3, tmps=8)
     ; (before optimizer)
     ; /.../PHP/4_conditional_assignment/1_instance_4_conditional_assignment/1_instance_4_conditional_assignment.php:1-5
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($c) int(5)
0001 T4 = FETCH_R (global) string("_GET")
0002 T5 = FETCH_DIM_R T4 string("p1")
0003 ASSIGN CV1($a) T5
0004 T7 = IS_SMALLER int(9) CV0($c)
0005 JMPZ T7 0009
0006 T8 = ASSIGN CV2($b) string("safe")
0007 T9 = QM_ASSIGN T8
0008 JMP 0011
0009 T10 = ASSIGN CV2($b) CV1($a)
0010 T9 = QM_ASSIGN T10
0011 FREE T9
0012 ECHO CV2($b)
0013 RETURN int(1)
