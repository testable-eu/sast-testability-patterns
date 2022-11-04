
$_main: ; (lines=8, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/125_JS_redirect/a.php:1-5
L0 (3):     EXT_STMT
L1 (3):     INIT_FCALL 0 80 string("session_start")
L2 (3):     DO_FCALL
L3 (5):     EXT_STMT
L4 (5):     T1 = FETCH_R (global) string("_SESSION")
L5 (5):     T2 = FETCH_DIM_R T1 string("abc")
L6 (5):     ECHO T2
L7 (5):     RETURN int(1)
