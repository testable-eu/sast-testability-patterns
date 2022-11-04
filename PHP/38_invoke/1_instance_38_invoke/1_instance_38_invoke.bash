
$_main: ; (lines=19, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/35_invoke/35_invoke.php:1-13
L0 (9):     EXT_STMT
L1 (9):     V3 = NEW 0 string("CallableClass")
L2 (9):     DO_FCALL
L3 (9):     ASSIGN CV0($obj) V3
L4 (10):    EXT_STMT
L5 (10):    INIT_FCALL 2 112 string("fopen")
L6 (10):    SEND_VAL string("php://stdin") 1
L7 (10):    SEND_VAL string("r") 2
L8 (10):    V6 = DO_FCALL
L9 (10):    ASSIGN CV1($_fp) V6
L10 (11):   EXT_STMT
L11 (11):   T8 = FETCH_R (global) string("_GET")
L12 (11):   T9 = FETCH_DIM_R T8 string("p1")
L13 (11):   ASSIGN CV2($b) T9
L14 (13):   EXT_STMT
L15 (13):   INIT_DYNAMIC_CALL 1 CV0($obj)
L16 (13):   SEND_VAR_EX CV2($b) 1
L17 (13):   DO_FCALL
L18 (13):   RETURN int(1)
LIVE RANGES:
        3: L2 - L3 (new)

CallableClass::__invoke: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/35_invoke/35_invoke.php:4-7
L0 (4):     EXT_NOP
L1 (4):     CV0($x) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($x)
L4 (7):     EXT_STMT
L5 (7):     RETURN null
