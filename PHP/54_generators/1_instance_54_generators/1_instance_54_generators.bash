
$_main: ; (lines=19, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/50_generators/first_ex/first_ex.php:1-12
L0 (7):     EXT_STMT
L1 (7):     T3 = FETCH_R (global) string("_GET")
L2 (7):     T4 = FETCH_DIM_R T3 string("p1")
L3 (7):     ASSIGN CV0($b) T4
L4 (8):     EXT_STMT
L5 (8):     INIT_FCALL 1 176 string("gen_one_to_three")
L6 (8):     SEND_VAR CV0($b) 1
L7 (8):     V6 = DO_FCALL
L8 (8):     ASSIGN CV1($generator) V6
L9 (9):     EXT_STMT
L10 (9):    V8 = FE_RESET_R CV1($generator) L17
L11 (9):    FE_FETCH_R V8 CV2($value) L17
L12 (11):   EXT_STMT
L13 (11):   NOP
L14 (11):   T9 = FAST_CONCAT CV2($value) string("
")
L15 (11):   ECHO T9
L16 (9):    JMP L11
L17 (9):    FE_FREE V8
L18 (12):   RETURN int(1)
LIVE RANGES:
        8: L11 - L17 (loop)

gen_one_to_three: ; (lines=15, args=1, vars=2, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/50_generators/first_ex/first_ex.php:2-6
L0 (2):     EXT_NOP
L1 (2):     CV0($b) = RECV 1
L2 (2):     GENERATOR_CREATE
L3 (3):     EXT_STMT
L4 (3):     ASSIGN CV1($i) int(1)
L5 (3):     JMP L10
L6 (4):     EXT_STMT
L7 (4):     YIELD CV0($b)
L8 (3):     T4 = POST_INC CV1($i)
L9 (3):     FREE T4
L10 (3):    T5 = IS_SMALLER_OR_EQUAL CV1($i) int(3)
L11 (3):    EXT_STMT
L12 (3):    JMPNZ T5 L6
L13 (6):    EXT_STMT
L14 (6):    GENERATOR_RETURN null
LIVE RANGES:
        5: L11 - L12 (tmp/var)
