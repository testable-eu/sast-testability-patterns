
$_main: ; (lines=17, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/second_ex/second_ex.php:1-8
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (5):     EXT_STMT
L5 (5):     T6 = DECLARE_LAMBDA_FUNCTION string("")
L6 (5):     BIND_LEXICAL T6 CV2($y)
L7 (5):     ASSIGN CV1($fn1) T6
L8 (7):     EXT_STMT
L9 (7):     INIT_DYNAMIC_CALL 1 CV1($fn1)
L10 (7):    SEND_VAL_EX string("safe") 1
L11 (7):    V8 = DO_FCALL
L12 (7):    INIT_DYNAMIC_CALL 1 V8
L13 (7):    SEND_VAR_EX CV0($b) 1
L14 (7):    V9 = DO_FCALL
L15 (7):    ECHO V9
L16 (8):    RETURN int(1)
LIVE RANGES:
        6: L6 - L7 (tmp/var)

{closure}: ; (lines=9, args=1, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/second_ex/second_ex.php:5-5
L0 (5):     EXT_NOP
L1 (5):     CV0($x) = RECV 1
L2 (5):     BIND_STATIC CV1($y)
L3 (5):     EXT_STMT
L4 (5):     T2 = DECLARE_LAMBDA_FUNCTION string("")
L5 (5):     BIND_LEXICAL T2 CV0($x)
L6 (5):     RETURN T2
L7 (5):     EXT_STMT
L8 (5):     RETURN null
LIVE RANGES:
        2: L5 - L6 (tmp/var)

{closure}: ; (lines=8, args=1, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/second_ex/second_ex.php:5-5
L0 (5):     EXT_NOP
L1 (5):     CV0($y) = RECV 1
L2 (5):     BIND_STATIC CV1($x)
L3 (5):     EXT_STMT
L4 (5):     T2 = CONCAT CV1($x) CV0($y)
L5 (5):     RETURN T2
L6 (5):     EXT_STMT
L7 (5):     RETURN null