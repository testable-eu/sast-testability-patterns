
$_main: ; (lines=9, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/53_combined_operator/53_combined_operator.php:1-3
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     V4 = ASSIGN CV1($b) T3
L4 (2):     T5 = CONCAT V4 string(" safe")
L5 (2):     ASSIGN CV0($a) T5
L6 (3):     EXT_STMT
L7 (3):     ECHO CV1($b)
L8 (3):     RETURN int(1)
