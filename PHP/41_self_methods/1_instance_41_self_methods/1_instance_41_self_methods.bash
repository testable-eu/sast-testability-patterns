
$_main: ; (lines=12, args=0, vars=1, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/90_self_methods/90_self_methods.php:1-17
L0 (15):    EXT_STMT
L1 (15):    V1 = NEW 0 string("myclass")
L2 (15):    DO_FCALL
L3 (15):    ASSIGN CV0($obj) V1
L4 (17):    EXT_STMT
L5 (17):    INIT_METHOD_CALL 1 CV0($obj) string("F")
L6 (17):    CHECK_FUNC_ARG 1
L7 (17):    V4 = FETCH_FUNC_ARG (global) string("_GET")
L8 (17):    V5 = FETCH_DIM_FUNC_ARG V4 string("p1")
L9 (17):    SEND_FUNC_ARG V5 1
L10 (17):   DO_FCALL
L11 (17):   RETURN int(1)
LIVE RANGES:
        1: L2 - L3 (new)

myclass::F: ; (lines=8, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/90_self_methods/90_self_methods.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     INIT_STATIC_METHOD_CALL 1 (self) (exception) string("T")
L4 (6):     SEND_VAR_EX CV0($b) 1
L5 (6):     DO_FCALL
L6 (7):     EXT_STMT
L7 (7):     RETURN null

myclass::T: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/90_self_methods/90_self_methods.php:9-11
L0 (9):     EXT_NOP
L1 (9):     CV0($b) = RECV 1
L2 (10):    EXT_STMT
L3 (10):    ECHO CV0($b)
L4 (11):    EXT_STMT
L5 (11):    RETURN null
