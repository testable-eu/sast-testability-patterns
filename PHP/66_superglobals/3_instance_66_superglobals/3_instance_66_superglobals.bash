
$_main: ; (lines=5, args=0, vars=0, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/105_superglobals/third_ex/third_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T0 = FETCH_R (global) string("_ENV")
L2 (2):     T1 = FETCH_DIM_R T0 string("p1")
L3 (2):     ECHO T1
L4 (3):     RETURN int(1)
