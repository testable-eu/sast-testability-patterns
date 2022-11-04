
$_main: ; (lines=16, args=0, vars=3, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/14_use_with_closures/second_ex/second_ex.php:1-12
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($message) string("safe")
L6 (5):     EXT_STMT
L7 (5):     T7 = DECLARE_LAMBDA_FUNCTION string("")
L8 (5):     BIND_LEXICAL (ref) T7 CV1($message)
L9 (9):     ASSIGN CV2($example) T7
L10 (10):   EXT_STMT
L11 (10):   ASSIGN CV1($message) CV0($b)
L12 (11):   EXT_STMT
L13 (11):   INIT_DYNAMIC_CALL 0 CV2($example)
L14 (11):   DO_FCALL
L15 (12):   RETURN int(1)
LIVE RANGES:
        7: L8 - L9 (tmp/var)

{closure}: ; (lines=6, args=0, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/14_use_with_closures/second_ex/second_ex.php:5-9
L0 (5):     EXT_NOP
L1 (5):     BIND_STATIC (ref) CV0($message)
L2 (8):     EXT_STMT
L3 (8):     ECHO CV0($message)
L4 (9):     EXT_STMT
L5 (9):     RETURN null
