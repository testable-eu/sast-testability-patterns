
$_main: ; (lines=17, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/19_return_by_reference/19_return_by_reference.php:1-18
L0 (3):     NOP
L1 (10):    EXT_STMT
L2 (10):    ASSIGN CV0($b) string("input")
L3 (11):    EXT_STMT
L4 (11):    V4 = NEW 0 string("foo")
L5 (11):    DO_FCALL
L6 (11):    ASSIGN CV1($obj) V4
L7 (13):    EXT_STMT
L8 (13):    INIT_METHOD_CALL 0 CV1($obj) string("getValue")
L9 (13):    V7 = DO_FCALL
L10 (13):   ASSIGN_REF (function) CV2($myValue) V7
L11 (14):   EXT_STMT
L12 (14):   ASSIGN_OBJ CV1($obj) string("value")
L13 (14):   OP_DATA CV0($b)
L14 (17):   EXT_STMT
L15 (17):   ECHO CV2($myValue)
L16 (18):   RETURN int(1)
LIVE RANGES:
        4: L5 - L6 (new)

foo::getValue: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/19_return_by_reference/19_return_by_reference.php:5-7
L0 (5):     EXT_NOP
L1 (6):     EXT_STMT
L2 (6):     V0 = FETCH_OBJ_W (ref) THIS string("value")
L3 (6):     RETURN_BY_REF V0
L4 (7):     EXT_STMT
L5 (7):     RETURN_BY_REF (function) null
