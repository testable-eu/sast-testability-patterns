
$_main: ; (lines=27, args=0, vars=4, tmps=12)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/second_ex/second_ex.php:1-18
L0 (2):     EXT_STMT
L1 (2):     T4 = FETCH_R (global) string("_GET")
L2 (2):     T5 = FETCH_DIM_R T4 string("p1")
L3 (2):     ASSIGN CV0($b) T5
L4 (3):     EXT_STMT
L5 (3):     T7 = FETCH_R (global) string("_GET")
L6 (3):     T8 = FETCH_DIM_R T7 string("p2")
L7 (3):     ASSIGN CV1($c) T8
L8 (9):     EXT_STMT
L9 (9):     T10 = DECLARE_LAMBDA_FUNCTION string("")
L10 (11):   ASSIGN CV2($example) T10
L11 (12):   EXT_STMT
L12 (12):   T12 = INIT_ARRAY 3 (packed) CV0($b) NEXT
L13 (12):   T12 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L14 (12):   T12 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L15 (12):   ASSIGN CV3($arr) T12
L16 (15):   EXT_STMT
L17 (15):   INIT_FCALL 2 112 string("array_walk")
L18 (15):   SEND_REF CV3($arr) 1
L19 (15):   SEND_VAR CV2($example) 2
L20 (15):   DO_FCALL
L21 (18):   EXT_STMT
L22 (18):   INIT_FCALL 2 112 string("array_walk")
L23 (18):   SEND_REF CV3($arr) 1
L24 (18):   SEND_VAR CV1($c) 2
L25 (18):   DO_FCALL
L26 (18):   RETURN int(1)
LIVE RANGES:
        12: L13 - L15 (tmp/var)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/second_ex/second_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($b)
L4 (7):     EXT_STMT
L5 (7):     RETURN null

{closure}: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/15_array_walk/second_ex/second_ex.php:9-11
L0 (9):     EXT_NOP
L1 (9):     CV0($b) = RECV 1
L2 (10):    EXT_STMT
L3 (10):    ECHO CV0($b)
L4 (11):    EXT_STMT
L5 (11):    RETURN null
