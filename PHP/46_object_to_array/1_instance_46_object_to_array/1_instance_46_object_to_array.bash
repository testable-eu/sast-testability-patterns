
$_main: ; (lines=18, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/80_object_to_array/first_ex/first_ex.php:1-16
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (4):     NOP
L5 (5):     NOP
L6 (11):    EXT_STMT
L7 (11):    V6 = NEW 1 string("A")
L8 (11):    SEND_VAR_EX CV0($b) 1
L9 (11):    DO_FCALL
L10 (11):   ASSIGN CV1($a) V6
L11 (13):   EXT_STMT
L12 (13):   T9 = CAST (array) CV1($a)
L13 (13):   ASSIGN CV2($arr) T9
L14 (16):   EXT_STMT
L15 (16):   T11 = FETCH_DIM_R CV2($arr) string("b")
L16 (16):   ECHO T11
L17 (16):   RETURN int(1)
LIVE RANGES:
        6: L8 - L10 (new)

A::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/80_object_to_array/first_ex/first_ex.php:7-9
L0 (7):     EXT_NOP
L1 (7):     CV0($b) = RECV 1
L2 (8):     EXT_STMT
L3 (8):     ASSIGN_OBJ THIS string("b")
L4 (8):     OP_DATA CV0($b)
L5 (9):     EXT_STMT
L6 (9):     RETURN null
