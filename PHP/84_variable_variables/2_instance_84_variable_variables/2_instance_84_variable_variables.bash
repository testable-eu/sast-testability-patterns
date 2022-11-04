
$_main: ; (lines=12, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/2_variable_variables/second_ex/second_ex.php:1-6
L0 (3):     EXT_STMT
L1 (3):     T2 = FETCH_R (global) string("_GET")
L2 (3):     T3 = FETCH_DIM_R T2 string("p1")
L3 (3):     ASSIGN CV0($a) T3
L4 (4):     EXT_STMT
L5 (4):     T5 = FETCH_R (global) string("_GET")
L6 (4):     T6 = FETCH_DIM_R T5 string("p2")
L7 (4):     ASSIGN CV1($b) T6
L8 (6):     EXT_STMT
L9 (6):     T8 = FETCH_R (local) CV0($a)
L10 (6):    ECHO T8
L11 (6):    RETURN int(1)