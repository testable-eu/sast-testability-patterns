
$_main: ; (lines=15, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/66_simple_object/66_simple_object.php:1-19
L0 (4):     NOP
L1 (16):    EXT_STMT
L2 (16):    T2 = FETCH_R (global) string("_GET")
L3 (16):    T3 = FETCH_DIM_R T2 string("p1")
L4 (16):    ASSIGN CV0($b) T3
L5 (17):    EXT_STMT
L6 (17):    V5 = NEW 1 string("Test")
L7 (17):    SEND_VAR_EX CV0($b) 1
L8 (17):    DO_FCALL
L9 (17):    ASSIGN CV1($test) V5
L10 (19):   EXT_STMT
L11 (19):   INIT_METHOD_CALL 0 CV1($test) string("getfoo")
L12 (19):   V8 = DO_FCALL
L13 (19):   ECHO V8
L14 (19):   RETURN int(1)
LIVE RANGES:
        5: L7 - L9 (new)

Test::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/66_simple_object/66_simple_object.php:6-9
L0 (6):     EXT_NOP
L1 (6):     CV0($foo) = RECV 1
L2 (8):     EXT_STMT
L3 (8):     ASSIGN_OBJ THIS string("foo")
L4 (8):     OP_DATA CV0($foo)
L5 (9):     EXT_STMT
L6 (9):     RETURN null

Test::getfoo: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/66_simple_object/66_simple_object.php:11-13
L0 (11):    EXT_NOP
L1 (12):    EXT_STMT
L2 (12):    T0 = FETCH_OBJ_R THIS string("foo")
L3 (12):    RETURN T0
L4 (13):    EXT_STMT
L5 (13):    RETURN null
