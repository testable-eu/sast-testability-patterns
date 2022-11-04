
$_main: ; (lines=11, args=0, vars=1, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/42_try_catch_finally/first_ex/first_ex.php:1-22
L0 (17):    EXT_STMT
L1 (17):    T1 = FETCH_R (global) string("_GET")
L2 (17):    T2 = FETCH_DIM_R T1 string("p1")
L3 (17):    ASSIGN CV0($b) T2
L4 (18):    EXT_STMT
L5 (18):    INIT_FCALL 1 240 string("foo")
L6 (18):    T4 = CONCAT CV0($b) string("
")
L7 (18):    SEND_VAL T4 1
L8 (18):    V5 = DO_FCALL
L9 (18):    ECHO V5
L10 (22):   RETURN int(1)

foo: ; (lines=30, args=1, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/42_try_catch_finally/first_ex/first_ex.php:2-16
L0 (2):     EXT_NOP
L1 (2):     CV0($b) = RECV 1
L2 (4):     EXT_STMT
L3 (4):     ASSIGN CV1($bar) CV0($b)
L4 (5):     NOP
L5 (6):     EXT_STMT
L6 (6):     V5 = NEW 1 string("Exception")
L7 (6):     SEND_VAL_EX string("Exception") 1
L8 (6):     DO_FCALL
L9 (6):     THROW V5
L10 (6):    JMP L18
L11 (7):    CV2($e) = CATCH string("Exception")
L12 (8):    EXT_STMT
L13 (8):    ECHO string("catch 
")
L14 (10):   EXT_STMT
L15 (10):   T7 = QM_ASSIGN CV1($bar)
L16 (10):   T4 = FAST_CALL L20 T7
L17 (10):   RETURN T7
L18 (11):   T4 = FAST_CALL L20
L19 (11):   JMP L28
L20 (12):   EXT_STMT
L21 (12):   ECHO string("finally 
")
L22 (14):   EXT_STMT
L23 (14):   INIT_FCALL 1 96 string("htmlspecialchars")
L24 (14):   SEND_VAR CV1($bar) 1
L25 (14):   V8 = DO_FCALL
L26 (14):   ASSIGN CV1($bar) V8
L27 (14):   FAST_RET T4
L28 (16):   EXT_STMT
L29 (16):   RETURN null
LIVE RANGES:
        5: L7 - L9 (new)
        7: L16 - L17 (tmp/var)
EXCEPTION TABLE:
        L5, L11, L20, L27


