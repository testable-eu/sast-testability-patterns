
$_main:
     ; (lines=12, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/16_variadic_functions/3_instance_16_variadic_functions/3_instance_16_variadic_functions.php:1-14
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL 4 208 string("sum")
0004 SEND_VAL int(1) 1
0005 SEND_VAL int(1) 2
0006 SEND_VAL int(1) 3
0007 SEND_VAR CV0($a) 4
0008 V5 = DO_UCALL
0009 ASSIGN CV1($b) V5
0010 ECHO CV1($b)
0011 RETURN int(1)

sum:
     ; (lines=11, args=0, vars=2, tmps=2)
     ; (before optimizer)
     ; /.../PHP/16_variadic_functions/3_instance_16_variadic_functions/3_instance_16_variadic_functions.php:3-10
     ; return  [] RANGE[0..0]
0000 CV0($numbers) = RECV_VARIADIC 1
0001 V2 = FE_RESET_R CV0($numbers) 0008
0002 FE_FETCH_R V2 CV1($n) 0008
0003 T3 = IS_NOT_EQUAL CV1($n) int(1)
0004 JMPZ T3 0007
0005 FE_FREE V2
0006 RETURN CV1($n)
0007 JMP 0002
0008 FE_FREE V2
0009 RETURN string("safe")
0010 RETURN null
LIVE RANGES:
     2: 0002 - 0008 (loop)
