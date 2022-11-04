
$_main: ; (lines=13, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/7_function_variable/second/second_ex.php:1-9
L0 (5):     EXT_STMT
L1 (5):     T2 = FETCH_R (global) string("_GET")
L2 (5):     T3 = FETCH_DIM_R T2 string("p1")
L3 (5):     ASSIGN CV0($b) T3
L4 (6):     EXT_STMT
L5 (6):     T5 = FETCH_R (global) string("_GET")
L6 (6):     T6 = FETCH_DIM_R T5 string("p2")
L7 (6):     ASSIGN CV1($func) T6
L8 (9):     EXT_STMT
L9 (9):     INIT_DYNAMIC_CALL 1 CV1($func)
L10 (9):    SEND_VAR_EX CV0($b) 1
L11 (9):    DO_FCALL
L12 (9):    RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/7_function_variable/second/second_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($st) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($st)
L4 (4):     EXT_STMT
L5 (4):     RETURN null