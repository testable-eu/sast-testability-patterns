
$_main: ; (lines=14, args=0, vars=1, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/first_ex/fist_ex.php:1-16
L0 (4):     NOP
L1 (14):    EXT_STMT
L2 (14):    T1 = FETCH_R (global) string("_GET")
L3 (14):    T2 = FETCH_DIM_R T1 string("p1")
L4 (14):    ASSIGN CV0($b) T2
L5 (16):    EXT_STMT
L6 (16):    V4 = NEW 1 string("Foo")
L7 (16):    SEND_VAR_EX CV0($b) 1
L8 (16):    DO_FCALL
L9 (16):    T6 = INIT_ARRAY 2 (packed) V4 NEXT
L10 (16):   T6 = ADD_ARRAY_ELEMENT string("baz") NEXT
L11 (16):   INIT_DYNAMIC_CALL 0 T6
L12 (16):   DO_FCALL
L13 (16):   RETURN int(1)
LIVE RANGES:
        4: L7 - L9 (new)
        6: L10 - L11 (tmp/var)

Foo::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/first_ex/fist_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_STATIC_PROP string("b")
L4 (6):     OP_DATA CV0($b)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

Foo::baz: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/86_object_callable/first_ex/fist_ex.php:8-12
L0 (8):     EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    T0 = FETCH_STATIC_PROP_R string("b") (self) (exception)
L3 (11):    ECHO T0
L4 (12):    EXT_STMT
L5 (12):    RETURN null
