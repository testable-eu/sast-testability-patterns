
$_main: ; (lines=17, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/124_callstatic_overloading/124_callstatic_overloading.php:1-19
L0 (12):    EXT_STMT
L1 (12):    T2 = FETCH_R (global) string("_GET")
L2 (12):    T3 = FETCH_DIM_R T2 string("p1")
L3 (12):    ASSIGN CV0($b) T3
L4 (13):    EXT_STMT
L5 (13):    V5 = NEW 0 string("MethodTest")
L6 (13):    DO_FCALL
L7 (13):    ASSIGN CV1($obj) V5
L8 (14):    EXT_STMT
L9 (14):    ASSIGN_OBJ CV1($obj) string("x")
L10 (14):   OP_DATA CV0($b)
L11 (18):   EXT_STMT
L12 (18):   INIT_STATIC_METHOD_CALL 2 string("MethodTest") string("runTest")
L13 (18):   SEND_VAL_EX string("arg1") 1
L14 (18):   SEND_VAR_EX CV0($b) 2
L15 (18):   DO_FCALL
L16 (19):   RETURN int(1)
LIVE RANGES:
        5: L6 - L7 (new)

MethodTest::__callStatic: ; (lines=13, args=2, vars=3, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/124_callstatic_overloading/124_callstatic_overloading.php:4-9
L0 (4):     EXT_NOP
L1 (4):     CV0($name) = RECV 1
L2 (4):     CV1($arguments) = RECV 2
L3 (6):     EXT_STMT
L4 (6):     V3 = FE_RESET_R CV1($arguments) L10
L5 (6):     FE_FETCH_R V3 CV2($arg) L10
L6 (7):     EXT_STMT
L7 (7):     T4 = CONCAT CV2($arg) string("
")
L8 (7):     ECHO T4
L9 (6):     JMP L5
L10 (6):    FE_FREE V3
L11 (9):    EXT_STMT
L12 (9):    RETURN null
LIVE RANGES:
        3: L5 - L10 (loop)
