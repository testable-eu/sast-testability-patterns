
$_main: ; (lines=17, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/93_array_functions/second_ex/second_ex.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($val) T4
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($input) array(...)
L6 (5):     EXT_STMT
L7 (5):     INIT_FCALL 3 128 string("array_pad")
L8 (5):     SEND_VAR CV1($input) 1
L9 (5):     SEND_VAL int(5) 2
L10 (5):    SEND_VAR CV0($val) 3
L11 (5):    V7 = DO_FCALL
L12 (5):    ASSIGN CV2($result) V7
L13 (6):    EXT_STMT
L14 (6):    T9 = FETCH_DIM_R CV2($result) int(3)
L15 (6):    ECHO T9
L16 (7):    RETURN int(1)
