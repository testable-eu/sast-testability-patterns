
$_main: ; (lines=8, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/72_wrong_sanitizer/second_ex/second_ex.php:1-4
L0 (3):     EXT_STMT
L1 (3):     INIT_FCALL 1 96 string("json_encode")
L2 (3):     T0 = FETCH_R (global) string("_GET")
L3 (3):     T1 = FETCH_DIM_R T0 string("p1")
L4 (3):     SEND_VAL T1 1
L5 (3):     V2 = DO_FCALL
L6 (3):     ECHO V2
L7 (4):     RETURN int(1)
