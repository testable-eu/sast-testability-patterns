
$_main: ; (lines=12, args=0, vars=1, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/9_nested_function/9_nested_function.php:1-10
L0 (8):     EXT_STMT
L1 (8):     T1 = FETCH_R (global) string("_GET")
L2 (8):     T2 = FETCH_DIM_R T1 string("p1")
L3 (8):     ASSIGN CV0($b) T2
L4 (9):     EXT_STMT
L5 (9):     INIT_FCALL 0 80 string("f")
L6 (9):     DO_FCALL
L7 (10):    EXT_STMT
L8 (10):    INIT_FCALL_BY_NAME 1 string("D")
L9 (10):    SEND_VAR_EX CV0($b) 1
L10 (10):   DO_FCALL
L11 (10):   RETURN int(1)

F: ; (lines=5, args=0, vars=0, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/9_nested_function/9_nested_function.php:3-7
L0 (3):     EXT_NOP
L1 (4):     EXT_STMT
L2 (4):     DECLARE_FUNCTION string("d")
L3 (7):     EXT_STMT
L4 (7):     RETURN null

D: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/9_nested_function/9_nested_function.php:4-6
L0 (4):     EXT_NOP
L1 (4):     CV0($b) = RECV 1
L2 (5):     EXT_STMT
L3 (5):     ECHO CV0($b)
L4 (6):     EXT_STMT
L5 (6):     RETURN null
