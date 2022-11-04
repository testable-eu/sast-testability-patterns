
$_main: ; (lines=10, args=0, vars=2, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/101_system/first_ex/first_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 2 112 string("system")
L6 (3):     SEND_VAR CV0($a) 1
L7 (3):     SEND_REF CV1($val) 2
L8 (3):     DO_FCALL
L9 (3):     RETURN int(1)
