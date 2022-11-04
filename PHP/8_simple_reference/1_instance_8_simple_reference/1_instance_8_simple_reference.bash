
$_main: ; (lines=13, args=0, vars=3, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/17_simple_reference/17_simple_reference.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($a) T4
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($foo) string("Bob")
L6 (4):     EXT_STMT
L7 (4):     ASSIGN_REF CV2($bar) CV1($foo)
L8 (5):     EXT_STMT
L9 (5):     ASSIGN CV2($bar) CV0($a)
L10 (7):    EXT_STMT
L11 (7):    ECHO CV1($foo)
L12 (7):    RETURN int(1)
