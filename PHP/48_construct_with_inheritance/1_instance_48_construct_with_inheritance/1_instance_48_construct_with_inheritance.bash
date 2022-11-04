
$_main: ; (lines=9, args=0, vars=1, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/27_construct_with_inheritance/first_ex/first_ex.php:1-18
L0 (18):    EXT_STMT
L1 (18):    V1 = NEW 1 string("child_class")
L2 (18):    CHECK_FUNC_ARG 1
L3 (18):    V2 = FETCH_FUNC_ARG (global) string("_GET")
L4 (18):    V3 = FETCH_DIM_FUNC_ARG V2 string("p1")
L5 (18):    SEND_FUNC_ARG V3 1
L6 (18):    DO_FCALL
L7 (18):    ASSIGN CV0($b) V1
L8 (18):    RETURN int(1)
LIVE RANGES:
        1: L2 - L7 (new)

parent_class::__construct: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/27_construct_with_inheritance/first_ex/first_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($b)
L4 (7):     EXT_STMT
L5 (7):     RETURN null

parent_class::F: ; (lines=6, args=1, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/27_construct_with_inheritance/first_ex/first_ex.php:9-11
L0 (9):     EXT_NOP
L1 (9):     CV0($b) = RECV 1
L2 (10):    EXT_STMT
L3 (10):    ASSIGN CV1($a) CV0($b)
L4 (11):    EXT_STMT
L5 (11):    RETURN null
