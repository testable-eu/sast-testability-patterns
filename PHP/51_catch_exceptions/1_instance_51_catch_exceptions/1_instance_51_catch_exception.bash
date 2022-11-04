
$_main: ; (lines=28, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/41_catch_exceptions/41_catch_exception.php:1-17
L0 (9):     EXT_STMT
L1 (9):     T2 = FETCH_R (global) string("_GET")
L2 (9):     T3 = FETCH_DIM_R T2 string("p1")
L3 (9):     ASSIGN CV0($b) T3
L4 (10):    NOP
L5 (11):    EXT_STMT
L6 (11):    INIT_FCALL 2 176 string("inverse")
L7 (11):    SEND_VAL int(5) 1
L8 (11):    SEND_VAR CV0($b) 2
L9 (11):    DO_FCALL
L10 (12):   EXT_STMT
L11 (12):   INIT_FCALL 2 176 string("inverse")
L12 (12):   SEND_VAL int(0) 1
L13 (12):   SEND_VAR CV0($b) 2
L14 (12):   DO_FCALL
L15 (12):   JMP L27
L16 (13):   CV1($e) = CATCH string("Exception")
L17 (15):   EXT_STMT
L18 (15):   ECHO CV0($b)
L19 (16):   EXT_STMT
L20 (16):   ECHO string("Caught exception: ")
L21 (16):   EXT_STMT
L22 (16):   INIT_METHOD_CALL 0 CV1($e) string("getMessage")
L23 (16):   V7 = DO_FCALL
L24 (16):   ECHO V7
L25 (16):   EXT_STMT
L26 (16):   ECHO string("
")
L27 (17):   RETURN int(1)
EXCEPTION TABLE:
        L5, L16, -, -

inverse: ; (lines=16, args=2, vars=2, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/41_catch_exceptions/41_catch_exception.php:2-7
L0 (2):     EXT_NOP
L1 (2):     CV0($x) = RECV 1
L2 (2):     CV1($b) = RECV 2
L3 (3):     EXT_STMT
L4 (3):     T2 = BOOL_NOT CV0($x)
L5 (3):     JMPZ T2 L11
L6 (4):     EXT_STMT
L7 (4):     V3 = NEW 1 string("Exception")
L8 (4):     SEND_VAR_EX CV1($b) 1
L9 (4):     DO_FCALL
L10 (4):    THROW V3
L11 (6):    EXT_STMT
L12 (6):    T5 = DIV int(1) CV0($x)
L13 (6):    RETURN T5
L14 (7):    EXT_STMT
L15 (7):    RETURN null
LIVE RANGES:
        3: L8 - L10 (new)