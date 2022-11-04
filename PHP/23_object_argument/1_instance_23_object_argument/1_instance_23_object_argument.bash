
$_main: ; (lines=20, args=0, vars=2, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/25_object_argument/25_object_argument.php:1-13
L0 (2):     EXT_STMT
L1 (2):     V2 = NEW 0 string("stdClass")
L2 (2):     DO_FCALL
L3 (2):     ASSIGN CV0($x) V2
L4 (3):     EXT_STMT
L5 (3):     ASSIGN_OBJ CV0($x) string("prop")
L6 (3):     OP_DATA string("abc")
L7 (10):    EXT_STMT
L8 (10):    T6 = FETCH_R (global) string("_GET")
L9 (10):    T7 = FETCH_DIM_R T6 string("p1")
L10 (10):   ASSIGN CV1($b) T7
L11 (11):   EXT_STMT
L12 (11):   INIT_FCALL 2 128 string("f")
L13 (11):   SEND_VAR CV0($x) 1
L14 (11):   SEND_VAR CV1($b) 2
L15 (11):   DO_FCALL
L16 (13):   EXT_STMT
L17 (13):   T10 = FETCH_OBJ_R CV0($x) string("prop")
L18 (13):   ECHO T10
L19 (13):   RETURN int(1)
LIVE RANGES:
        2: L2 - L3 (new)

f: ; (lines=8, args=2, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/25_object_argument/25_object_argument.php:6-8
L0 (6):     EXT_NOP
L1 (6):     CV0($o) = RECV 1
L2 (6):     CV1($b) = RECV 2
L3 (7):     EXT_STMT
L4 (7):     ASSIGN_OBJ CV0($o) string("prop")
L5 (7):     OP_DATA CV1($b)
L6 (8):     EXT_STMT
L7 (8):     RETURN null
