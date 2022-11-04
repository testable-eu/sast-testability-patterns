
$_main: ; (lines=14, args=0, vars=1, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/100_buffer/100_buffer.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T1 = FETCH_R (global) string("_GET")
L2 (2):     T2 = FETCH_DIM_R T1 string("p1")
L3 (2):     ASSIGN CV0($a) T2
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 0 80 string("ob_start")
L6 (3):     DO_FCALL
L7 (4):     EXT_STMT
L8 (4):     ECHO CV0($a)
L9 (5):     EXT_STMT
L10 (5):    INIT_FCALL 0 80 string("ob_end_clean")
L11 (5):    V5 = DO_FCALL
L12 (5):    ECHO V5
L13 (6):    RETURN int(1)
