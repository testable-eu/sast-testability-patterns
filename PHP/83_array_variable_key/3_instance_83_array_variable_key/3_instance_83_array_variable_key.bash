
$_main: ; (lines=19, args=0, vars=4, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/84_array_variable_key/third_ex/third_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($a) string("ttt")
L2 (3):     EXT_STMT
L3 (3):     T5 = FETCH_R (global) string("_GET")
L4 (3):     T6 = FETCH_DIM_R T5 string("p1")
L5 (3):     ASSIGN CV1($b) T6
L6 (4):     EXT_STMT
L7 (4):     T8 = FETCH_R (global) string("_GET")
L8 (4):     T9 = FETCH_DIM_R T8 string("p2")
L9 (4):     ASSIGN CV2($c) T9
L10 (5):    EXT_STMT
L11 (5):    T11 = INIT_ARRAY 3 (packed) int(1) NEXT
L12 (5):    T11 = ADD_ARRAY_ELEMENT int(2) NEXT
L13 (5):    T11 = ADD_ARRAY_ELEMENT CV1($b) CV0($a)
L14 (5):    ASSIGN CV3($x) T11
L15 (6):    EXT_STMT
L16 (6):    T13 = FETCH_DIM_R CV3($x) CV2($c)
L17 (6):    ECHO T13
L18 (6):    RETURN int(1)
LIVE RANGES:
        11: L12 - L14 (tmp/var)
