
$_main: ; (lines=9, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/101_system/third_ex/third_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T1 = FETCH_R (global) string("_GET")
L2 (2):     T2 = FETCH_DIM_R T1 string("p1")
L3 (2):     ASSIGN CV0($a) T2
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 1 96 string("unlink")
L6 (3):     SEND_VAR CV0($a) 1
L7 (3):     DO_FCALL
L8 (3):     RETURN int(1)
