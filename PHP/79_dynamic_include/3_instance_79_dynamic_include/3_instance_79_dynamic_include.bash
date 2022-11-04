
$_main: ; (lines=11, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/third_ex/third_ex.php:1-6
L0 (3):     EXT_STMT
L1 (3):     T2 = FETCH_R (global) string("_GET")
L2 (3):     T3 = FETCH_DIM_R T2 string("p1")
L3 (3):     ASSIGN CV0($a) T3
L4 (4):     EXT_STMT
L5 (4):     T5 = FETCH_R (global) string("_GET")
L6 (4):     T6 = FETCH_DIM_R T5 string("p2")
L7 (4):     ASSIGN CV1($b) T6
L8 (6):     EXT_STMT
L9 (6):     INCLUDE_OR_EVAL (include) CV1($b)
L10 (6):    RETURN int(1)
