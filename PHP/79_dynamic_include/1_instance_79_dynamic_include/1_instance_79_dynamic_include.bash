
$_main: ; (lines=9, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/first_ex/first_ex.php:1-4
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($file) string("a.php")
L6 (4):     EXT_STMT
L7 (4):     INCLUDE_OR_EVAL (include) CV1($file)
L8 (4):     RETURN int(1)

$_main: ; (lines=3, args=0, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/first_ex/a.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO CV0($a)
L2 (2):     RETURN int(1)
