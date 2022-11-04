
$_main: ; (lines=22, args=0, vars=4, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/16_array_map/second_ex/second_ex.php:1-11
L0 (3):     EXT_STMT
L1 (3):     T4 = DECLARE_LAMBDA_FUNCTION string("")
L2 (5):     ASSIGN CV0($func) T4
L3 (7):     EXT_STMT
L4 (7):     T6 = FETCH_R (global) string("_GET")
L5 (7):     T7 = FETCH_DIM_R T6 string("p1")
L6 (7):     ASSIGN CV1($a) T7
L7 (8):     EXT_STMT
L8 (8):     T9 = FETCH_R (global) string("_GET")
L9 (8):     T10 = FETCH_DIM_R T9 string("p2")
L10 (8):    ASSIGN CV2($b) T10
L11 (9):    EXT_STMT
L12 (9):    T12 = INIT_ARRAY 3 (packed) CV1($a) NEXT
L13 (9):    T12 = ADD_ARRAY_ELEMENT CV1($a) NEXT
L14 (9):    T12 = ADD_ARRAY_ELEMENT CV1($a) NEXT
L15 (9):    ASSIGN CV3($input) T12
L16 (11):   EXT_STMT
L17 (11):   INIT_FCALL 2 112 string("array_map")
L18 (11):   SEND_VAR CV2($b) 1
L19 (11):   SEND_VAR CV3($input) 2
L20 (11):   DO_FCALL
L21 (11):   RETURN int(1)
LIVE RANGES:
        12: L13 - L15 (tmp/var)

{closure}: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/16_array_map/second_ex/second_ex.php:3-5
L0 (3):     EXT_NOP
L1 (3):     CV0($a) = RECV 1
L2 (4):     EXT_STMT
L3 (4):     ECHO CV0($a)
L4 (5):     EXT_STMT
L5 (5):     RETURN null
