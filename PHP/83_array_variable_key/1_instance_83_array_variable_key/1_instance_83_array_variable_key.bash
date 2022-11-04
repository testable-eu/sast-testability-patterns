
$_main: ; (lines=15, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/84_array_variable_key/first_ex/first_ex.php:1-7
L0 (4):     EXT_STMT
L1 (4):     ASSIGN CV0($a) string("abc")
L2 (5):     EXT_STMT
L3 (5):     T4 = FETCH_R (global) string("_GET")
L4 (5):     T5 = FETCH_DIM_R T4 string("p1")
L5 (5):     ASSIGN CV1($b) T5
L6 (6):     EXT_STMT
L7 (6):     T7 = INIT_ARRAY 3 (packed) int(1) NEXT
L8 (6):     T7 = ADD_ARRAY_ELEMENT int(2) NEXT
L9 (6):     T7 = ADD_ARRAY_ELEMENT CV1($b) CV0($a)
L10 (6):    ASSIGN CV2($x) T7
L11 (7):    EXT_STMT
L12 (7):    T9 = FETCH_DIM_R CV2($x) string("abc")
L13 (7):    ECHO T9
L14 (7):    RETURN int(1)
LIVE RANGES:
        7: L8 - L10 (tmp/var)
