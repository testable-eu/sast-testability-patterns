
$_main: ; (lines=7, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/fifth_ex/fifth_ex.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T1 = FETCH_R (global) string("_GET")
L2 (2):     T2 = FETCH_DIM_R T1 string("p1")
L3 (2):     ASSIGN CV0($a) T2
L4 (3):     EXT_STMT
L5 (3):     INCLUDE_OR_EVAL (include) string("a.php")
L6 (3):     RETURN int(1)

$_main: ; (lines=3, args=0, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/fifth_ex/a.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO CV0($a)
L2 (2):     RETURN int(1)
