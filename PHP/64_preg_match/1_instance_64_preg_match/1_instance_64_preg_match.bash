
$_main: ; (lines=14, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/117_preg_match/117_preg_match.php:1-8
L0 (3):     EXT_STMT
L1 (3):     T2 = FETCH_R (global) string("_GET")
L2 (3):     T3 = FETCH_DIM_R T2 string("p1")
L3 (3):     ASSIGN CV0($b) T3
L4 (5):     EXT_STMT
L5 (5):     INIT_FCALL 3 128 string("preg_match")
L6 (5):     SEND_VAL string("/[^\s]+/") 1
L7 (5):     SEND_VAR CV0($b) 2
L8 (5):     SEND_REF CV1($matches) 3
L9 (5):     DO_FCALL
L10 (6):    EXT_STMT
L11 (6):    T6 = FETCH_DIM_R CV1($matches) int(0)
L12 (6):    ECHO T6
L13 (8):    RETURN int(1)
