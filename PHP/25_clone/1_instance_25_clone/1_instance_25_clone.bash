
$_main: ; (lines=17, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/26_clone/26_clone.php:1-19
L0 (4):     NOP
L1 (14):    EXT_STMT
L2 (14):    T3 = FETCH_R (global) string("_GET")
L3 (14):    T4 = FETCH_DIM_R T3 string("p1")
L4 (14):    ASSIGN CV0($b) T4
L5 (15):    EXT_STMT
L6 (15):    V6 = NEW 1 string("Foo")
L7 (15):    SEND_VAR_EX CV0($b) 1
L8 (15):    DO_FCALL
L9 (15):    ASSIGN CV1($ob1) V6
L10 (16):   EXT_STMT
L11 (16):   T9 = CLONE CV1($ob1)
L12 (16):   ASSIGN CV2($ob2) T9
L13 (17):   EXT_STMT
L14 (17):   INIT_METHOD_CALL 0 CV2($ob2) string("baz")
L15 (17):   DO_FCALL
L16 (19):   RETURN int(1)
LIVE RANGES:
        6: L7 - L9 (new)

Foo::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/26_clone/26_clone.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_OBJ THIS string("b")
L4 (6):     OP_DATA CV0($b)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

Foo::baz: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/26_clone/26_clone.php:8-12
L0 (8):     EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    T0 = FETCH_OBJ_R THIS string("b")
L3 (11):    ECHO T0
L4 (12):    EXT_STMT
L5 (12):    RETURN null
