
$_main: ; (lines=19, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/93_array_functions/first_ex/first_ex.php:1-8
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($b) T3
L4 (3):     EXT_STMT
L5 (3):     T5 = INIT_ARRAY 4 (packed) string("abc") NEXT
L6 (3):     T5 = ADD_ARRAY_ELEMENT string("def") NEXT
L7 (3):     T5 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L8 (3):     T5 = ADD_ARRAY_ELEMENT string("ghi") NEXT
L9 (3):     ASSIGN CV1($array) T5
L10 (4):    EXT_STMT
L11 (4):    INIT_FCALL 1 96 string("sort")
L12 (4):    SEND_REF CV1($array) 1
L13 (4):    DO_FCALL
L14 (7):    EXT_STMT
L15 (7):    T8 = FETCH_DIM_R CV1($array) int(0)
L16 (7):    T9 = CONCAT T8 string("
")
L17 (7):    ECHO T9
L18 (8):    RETURN int(1)
LIVE RANGES:
        5: L6 - L9 (tmp/var)
