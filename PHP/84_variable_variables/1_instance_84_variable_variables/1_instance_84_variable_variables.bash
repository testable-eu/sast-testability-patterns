
$_main: ; (lines=10, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/2_variable_variables/first_ex/first_ex.php:1-6
L0 (3):     EXT_STMT
L1 (3):     ASSIGN CV0($a) string("b")
L2 (4):     EXT_STMT
L3 (4):     T3 = FETCH_R (global) string("_GET")
L4 (4):     T4 = FETCH_DIM_R T3 string("p1")
L5 (4):     ASSIGN CV1($b) T4
L6 (6):     EXT_STMT
L7 (6):     T6 = FETCH_R (local) CV0($a)
L8 (6):     ECHO T6
L9 (6):     RETURN int(1)
