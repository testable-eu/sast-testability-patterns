
$_main:
     ; (lines=13, args=0, vars=3, tmps=6)
     ; (before optimizer)
     ; /.../PHP/54_generators/1_instance_54_generators/1_instance_54_generators.php:1-13
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 INIT_FCALL 1 176 string("gen_one_to_three")
0004 SEND_VAR CV0($b) 1
0005 V6 = DO_UCALL
0006 ASSIGN CV1($generator) V6
0007 V8 = FE_RESET_R CV1($generator) 0011
0008 FE_FETCH_R V8 CV2($value) 0011
0009 ECHO CV2($value)
0010 JMP 0008
0011 FE_FREE V8
0012 RETURN int(1)
LIVE RANGES:
     8: 0008 - 0011 (loop)

gen_one_to_three:
     ; (lines=9, args=1, vars=2, tmps=4)
     ; (before optimizer)
     ; /.../PHP/54_generators/1_instance_54_generators/1_instance_54_generators.php:2-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 GENERATOR_CREATE
0002 ASSIGN CV1($i) int(1)
0003 JMP 0006
0004 YIELD CV0($b)
0005 PRE_INC CV1($i)
0006 T5 = IS_SMALLER_OR_EQUAL CV1($i) int(3)
0007 JMPNZ T5 0004
0008 GENERATOR_RETURN null
