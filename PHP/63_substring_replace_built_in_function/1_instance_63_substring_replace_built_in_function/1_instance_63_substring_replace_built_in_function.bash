
$_main: ; (lines=26, args=0, vars=3, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/45_substring_replace_function/45_substring_replace_function.php:1-10
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($var) string("ABCDEFGH:/MNRPQR/")
L2 (3):     EXT_STMT
L3 (3):     T5 = ROPE_INIT 3 string("Original: ")
L4 (3):     T5 = ROPE_ADD 1 T5 CV0($var)
L5 (3):     T4 = ROPE_END 2 T5 string("
")
L6 (3):     ECHO T4
L7 (5):     EXT_STMT
L8 (5):     INIT_FCALL 2 112 string("fopen")
L9 (5):     SEND_VAL string("php://stdin") 1
L10 (5):    SEND_VAL string("r") 2
L11 (5):    V7 = DO_FCALL
L12 (5):    ASSIGN CV1($_fp) V7
L13 (6):    EXT_STMT
L14 (6):    T9 = FETCH_R (global) string("_GET")
L15 (6):    T10 = FETCH_DIM_R T9 string("p1")
L16 (6):    ASSIGN CV2($b) T10
L17 (10):   EXT_STMT
L18 (10):   INIT_FCALL 3 128 string("substr_replace")
L19 (10):   SEND_VAR CV0($var) 1
L20 (10):   SEND_VAR CV2($b) 2
L21 (10):   SEND_VAL int(0) 3
L22 (10):   V12 = DO_FCALL
L23 (10):   T13 = CONCAT V12 string("
")
L24 (10):   ECHO T13
L25 (10):   RETURN int(1)
LIVE RANGES:
        5: L3 - L5 (rope)
