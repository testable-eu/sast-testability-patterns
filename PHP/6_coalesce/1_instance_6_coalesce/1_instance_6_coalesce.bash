
$_main: ; (lines=14, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/116_coalesce/116_coalesce.php:1-8
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (4):     EXT_STMT
L5 (4):     ASSIGN CV1($arr) array(...)
L6 (5):     EXT_STMT
L7 (5):     T7 = FETCH_DIM_IS CV1($arr) int(4)
L8 (5):     T8 = COALESCE T7 L10
L9 (5):     T8 = QM_ASSIGN CV0($b)
L10 (5):    ASSIGN CV2($x) T8
L11 (6):    EXT_STMT
L12 (6):    ECHO CV2($x)
L13 (8):    RETURN int(1)
