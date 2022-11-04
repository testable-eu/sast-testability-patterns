
$_main: ; (lines=10, args=0, vars=3, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/fourth_ex/fourth_ex.php:1-4
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_DIM_R CV1($_Get) string("p1")
L2 (2):     ASSIGN CV0($a) T3
L3 (3):     EXT_STMT
L4 (3):     T5 = FETCH_DIM_R CV1($_Get) string("p2")
L5 (3):     ASSIGN CV2($b) T5
L6 (4):     EXT_STMT
L7 (4):     T7 = CONCAT string("file") CV2($b)
L8 (4):     INCLUDE_OR_EVAL (include) T7
L9 (4):     RETURN int(1)
