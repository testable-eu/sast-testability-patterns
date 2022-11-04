
$_main: ; (lines=12, args=0, vars=1, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/89_override/first_ex/first_ex.php:1-18
L0 (17):    EXT_STMT
L1 (17):    V1 = NEW 0 string("parent_class")
L2 (17):    DO_FCALL
L3 (17):    ASSIGN CV0($obj) V1
L4 (18):    EXT_STMT
L5 (18):    INIT_METHOD_CALL 1 CV0($obj) string("F")
L6 (18):    CHECK_FUNC_ARG 1
L7 (18):    V4 = FETCH_FUNC_ARG (global) string("_GET")
L8 (18):    V5 = FETCH_DIM_FUNC_ARG V4 string("p1")
L9 (18):    SEND_FUNC_ARG V5 1
L10 (18):   DO_FCALL
L11 (18):   RETURN int(1)
LIVE RANGES:
        1: L2 - L3 (new)

parent_class::F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/89_override/first_ex/first_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($b)
L4 (7):     EXT_STMT
L5 (7):     RETURN null

child_class::F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/89_override/first_ex/first_ex.php:11-13
L0 (11):    EXT_NOP
L1 (11):    CV0($b) = RECV 1
L2 (12):    EXT_STMT
L3 (12):    ECHO string("safe")
L4 (13):    EXT_STMT
L5 (13):    RETURN null
