
$_main: ; (lines=22, args=0, vars=4, tmps=13)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/third_ex/third_ex.php:1-15
L0 (3):     NOP
L1 (11):    EXT_STMT
L2 (11):    T4 = FETCH_R (global) string("_GET")
L3 (11):    T5 = FETCH_DIM_R T4 string("p1")
L4 (11):    ASSIGN CV0($b) T5
L5 (12):    EXT_STMT
L6 (12):    T7 = FETCH_R (global) string("_GET")
L7 (12):    T8 = FETCH_DIM_R T7 string("p2")
L8 (12):    ASSIGN CV1($bb) T8
L9 (13):    EXT_STMT
L10 (13):   T10 = CONCAT string("class") CV1($bb)
L11 (13):   ASSIGN CV2($t) T10
L12 (14):   EXT_STMT
L13 (14):   V12 = FETCH_CLASS (exception) CV2($t)
L14 (14):   V13 = NEW 1 V12
L15 (14):   SEND_VAR_EX CV0($b) 1
L16 (14):   DO_FCALL
L17 (14):   ASSIGN CV3($obj) V13
L18 (15):   EXT_STMT
L19 (15):   INIT_METHOD_CALL 0 CV2($t) string("printX")
L20 (15):   DO_FCALL
L21 (15):   RETURN int(1)
LIVE RANGES:
        13: L15 - L17 (new)

class1::__construct: ; (lines=8, args=1, vars=1, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/third_ex/third_ex.php:4-6
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
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/22_new_from_variable/third_ex/third_ex.php:7-9
L0 (7):     EXT_NOP
L1 (8):     EXT_STMT
L2 (8):     T0 = FETCH_OBJ_R THIS string("x")
L3 (8):     ECHO T0
L4 (9):     EXT_STMT
L5 (9):     RETURN null
