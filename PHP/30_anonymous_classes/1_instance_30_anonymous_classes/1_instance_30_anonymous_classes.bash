
$_main: ; (lines=14, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/68_anonymous_classes/68_anonymous_classes.php:1-10
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($b) T3
L4 (3):     EXT_STMT
L5 (3):     V5 = DECLARE_ANON_CLASS string("class@anonymous")
L6 (3):     V6 = NEW 0 V5
L7 (3):     DO_FCALL
L8 (3):     ASSIGN CV1($util) V6
L9 (10):    EXT_STMT
L10 (10):   INIT_METHOD_CALL 1 CV1($util) string("log")
L11 (10):   SEND_VAR_EX CV0($b) 1
L12 (10):   DO_FCALL
L13 (10):   RETURN int(1)
LIVE RANGES:
        6: L7 - L8 (new)

class@anonymous::log: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/68_anonymous_classes/68_anonymous_classes.php:4-7
L0 (4):     EXT_NOP
L1 (4):     CV0($msg) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($msg)
L4 (7):     EXT_STMT
L5 (7):     RETURN null
