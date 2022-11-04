
$_main: ; (lines=23, args=0, vars=4, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/56_foreach_with_array/second_ex/second_ex.php:1-14
L0 (2):     EXT_STMT
L1 (2):     T4 = FETCH_R (global) string("_GET")
L2 (2):     T5 = FETCH_DIM_R T4 string("p1")
L3 (2):     ASSIGN CV0($b) T5
L4 (5):     EXT_STMT
L5 (5):     T7 = INIT_ARRAY 4 string("bar") string("foo")
L6 (6):     T7 = ADD_ARRAY_ELEMENT string("foo") string("bar")
L7 (7):     T7 = ADD_ARRAY_ELEMENT CV0($b) string("too")
L8 (8):     T7 = ADD_ARRAY_ELEMENT int(100) int(-100)
L9 (8):     ASSIGN CV1($array) T7
L10 (11):   EXT_STMT
L11 (11):   V9 = FE_RESET_R CV1($array) L21
L12 (11):   T10 = FE_FETCH_R V9 CV2($value) L21
L13 (11):   ASSIGN CV3($key) T10
L14 (13):   EXT_STMT
L15 (13):   T13 = ROPE_INIT 4 CV3($key)
L16 (13):   T13 = ROPE_ADD 1 T13 string(" => ")
L17 (13):   T13 = ROPE_ADD 2 T13 CV2($value)
L18 (13):   T12 = ROPE_END 3 T13 string("
")
L19 (13):   ECHO T12
L20 (11):   JMP L12
L21 (11):   FE_FREE V9
L22 (14):   RETURN int(1)
LIVE RANGES:
        7: L6 - L9 (tmp/var)
        9: L12 - L21 (loop)
        13: L15 - L18 (rope)

