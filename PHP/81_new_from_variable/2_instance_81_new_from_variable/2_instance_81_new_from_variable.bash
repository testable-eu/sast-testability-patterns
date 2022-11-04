
$_main: ; (lines=19, args=0, vars=3, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/second_ex/second_ex.php:1-14
L0 (3):     NOP
L1 (11):    EXT_STMT
L2 (11):    T3 = FETCH_R (global) string("_GET")
L3 (11):    T4 = FETCH_DIM_R T3 string("p1")
L4 (11):    ASSIGN CV0($b) T4
L5 (12):    EXT_STMT
L6 (12):    T6 = FETCH_R (global) string("_GET")
L7 (12):    T7 = FETCH_DIM_R T6 string("p2")
L8 (12):    ASSIGN CV1($t) T7
L9 (13):    EXT_STMT
L10 (13):   V9 = FETCH_CLASS (exception) CV1($t)
L11 (13):   V10 = NEW 1 V9
L12 (13):   SEND_VAR_EX CV0($b) 1
L13 (13):   DO_FCALL
L14 (13):   ASSIGN CV2($obj) V10
L15 (14):   EXT_STMT
L16 (14):   INIT_METHOD_CALL 0 CV1($t) string("printX")
L17 (14):   DO_FCALL
L18 (14):   RETURN int(1)
LIVE RANGES:
        10: L12 - L14 (new)

class1::__construct: ; (lines=8, args=1, vars=1, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/second_ex/second_ex.php:4-6
L0 (4):     EXT_NOP
L1 (4):     CV0($y) = RECV 1
L2 (5):     EXT_STMT
L3 (5):     T2 = FETCH_CONSTANT (unqualified) string("y")
L4 (5):     ASSIGN_OBJ THIS string("x")
L5 (5):     OP_DATA T2
L6 (6):     EXT_STMT
L7 (6):     RETURN null

class1::printX: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/second_ex/second_ex.php:7-9
L0 (7):     EXT_NOP
L1 (8):     EXT_STMT
L2 (8):     T0 = FETCH_OBJ_R THIS string("x")
L3 (8):     ECHO T0
L4 (9):     EXT_STMT
L5 (9):     RETURN null
