
$_main: ; (lines=12, args=0, vars=0, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/105_superglobals/second_ex/second_ex_a.php:1-6
L0 (2):     EXT_STMT
L1 (2):     INIT_FCALL 0 80 string("session_start")
L2 (2):     DO_FCALL
L3 (3):     EXT_STMT
L4 (3):     T3 = FETCH_R (global) string("_GET")
L5 (3):     T4 = FETCH_DIM_R T3 string("p1")
L6 (3):     V1 = FETCH_W (global) string("_SESSION")
L7 (3):     ASSIGN_DIM V1 string("newsession")
L8 (3):     OP_DATA T4
L9 (5):     EXT_STMT
L10 (5):    INCLUDE_OR_EVAL (include) string("second_ex_b.php")
L11 (6):    RETURN int(1)
LIVE RANGES:
        4: L6 - L7 (tmp/var)

$_main: ; (lines=5, args=0, vars=0, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/105_superglobals/second_ex/second_ex_b.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T0 = FETCH_R (global) string("_SESSION")
L2 (2):     T1 = FETCH_DIM_R T0 string("newsession")
L3 (2):     ECHO T1
L4 (3):     RETURN int(1)
