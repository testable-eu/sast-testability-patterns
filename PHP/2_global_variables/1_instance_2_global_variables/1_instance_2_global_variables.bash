
$_main: ; (lines=13, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/3_global_variables/3_global_variables.php:1-11
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($result) string("")
L2 (8):     EXT_STMT
L3 (8):     T3 = FETCH_R (global) string("_GET")
L4 (8):     T4 = FETCH_DIM_R T3 string("p1")
L5 (8):     ASSIGN CV1($words) T4
L6 (9):     EXT_STMT
L7 (9):     INIT_FCALL 1 128 string("f")
L8 (9):     SEND_VAR CV1($words) 1
L9 (9):     DO_FCALL
L10 (11):   EXT_STMT
L11 (11):   ECHO CV0($result)
L12 (11):   RETURN int(1)

F: ; (lines=8, args=1, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/3_global_variables/3_global_variables.php:3-7
L0 (3):     EXT_NOP
L1 (3):     CV0($word) = RECV 1
L2 (4):     EXT_STMT
L3 (4):     BIND_GLOBAL CV1($result) string("result")
L4 (6):     EXT_STMT
L5 (6):     ASSIGN CV1($result) CV0($word)
L6 (7):     EXT_STMT
L7 (7):     RETURN null
