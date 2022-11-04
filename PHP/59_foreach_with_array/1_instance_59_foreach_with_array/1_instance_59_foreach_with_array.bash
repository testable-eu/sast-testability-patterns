
$_main: ; (lines=26, args=0, vars=3, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/56_foreach_with_array/first_ex/first_ex.php:1-12
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (4):     EXT_STMT
L5 (4):     T6 = INIT_ARRAY 4 string("bar") string("foo")
L6 (5):     T6 = ADD_ARRAY_ELEMENT string("foo") string("bar")
L7 (6):     T6 = ADD_ARRAY_ELEMENT CV0($b) string("too")
L8 (7):     T6 = ADD_ARRAY_ELEMENT int(100) int(-100)
L9 (7):     ASSIGN CV1($array) T6
L10 (10):   EXT_STMT
L11 (10):   INIT_FCALL 1 96 string("array_keys")
L12 (10):   SEND_VAR CV1($array) 1
L13 (10):   V8 = DO_FCALL
L14 (10):   V9 = FE_RESET_R V8 L24
L15 (10):   FE_FETCH_R V9 CV2($key) L24
L16 (11):   EXT_STMT
L17 (11):   T12 = ROPE_INIT 4 CV2($key)
L18 (11):   T12 = ROPE_ADD 1 T12 string(" => ")
L19 (11):   T10 = FETCH_DIM_R CV1($array) CV2($key)
L20 (11):   T12 = ROPE_ADD 2 T12 T10
L21 (11):   T11 = ROPE_END 3 T12 string("
")
L22 (11):   ECHO T11
L23 (10):   JMP L15
L24 (10):   FE_FREE V9
L25 (12):   RETURN int(1)
LIVE RANGES:
        6: L6 - L9 (tmp/var)
        9: L15 - L24 (loop)
        12: L17 - L21 (rope)

