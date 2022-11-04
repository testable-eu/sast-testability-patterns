
$_main: ; (lines=23, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/first_ex/first_ex.php:1-17
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (8):     EXT_STMT
L5 (8):     T6 = DECLARE_LAMBDA_FUNCTION string("")
L6 (10):    ASSIGN CV1($example) T6
L7 (11):    EXT_STMT
L8 (11):    T8 = INIT_ARRAY 3 (packed) CV0($b) NEXT
L9 (11):    T8 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L10 (11):   T8 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L11 (11):   ASSIGN CV2($arr) T8
L12 (14):   EXT_STMT
L13 (14):   INIT_FCALL 2 112 string("array_walk")
L14 (14):   SEND_REF CV2($arr) 1
L15 (14):   SEND_VAR CV1($example) 2
L16 (14):   DO_FCALL
L17 (17):   EXT_STMT
L18 (17):   INIT_FCALL 2 112 string("array_walk")
L19 (17):   SEND_REF CV2($arr) 1
L20 (17):   SEND_VAL string("F") 2
L21 (17):   DO_FCALL
L22 (17):   RETURN int(1)
LIVE RANGES:
        8: L9 - L11 (tmp/var)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/first_ex/first_ex.php:4-6
L0 (4):     EXT_NOP
L1 (4):     CV0($b) = RECV 1
L2 (5):     EXT_STMT
L3 (5):     ECHO CV0($b)
L4 (6):     EXT_STMT
L5 (6):     RETURN null

{closure}: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/first_ex/first_ex.php:8-10
L0 (8):     EXT_NOP
L1 (8):     CV0($b) = RECV 1
L2 (9):     EXT_STMT
L3 (9):     ECHO CV0($b)
L4 (10):    EXT_STMT
L5 (10):    RETURN null
