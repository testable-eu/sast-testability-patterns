
$_main: ; (lines=10, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/fourth_ex/fourth_ex.php:1-7
L0 (6):     EXT_STMT
L1 (6):     T2 = FETCH_R (global) string("_GET")
L2 (6):     T3 = FETCH_DIM_R T2 string("p1")
L3 (6):     ASSIGN CV0($a) T3
L4 (7):     EXT_STMT
L5 (7):     T5 = CONCAT CV1($func) string("_something")
L6 (7):     INIT_USER_CALL 1 string("call_user_func") T5
L7 (7):     SEND_USER CV0($a) 1
L8 (7):     DO_FCALL
L9 (7):     RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/fourth_ex/fourth_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($var) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($var)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
