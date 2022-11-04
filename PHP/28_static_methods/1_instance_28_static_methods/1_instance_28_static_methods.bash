
$_main: ; (lines=11, args=0, vars=0, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/46_static_methods/46_static_methods.php:1-16
L0 (4):     NOP
L1 (14):    EXT_STMT
L2 (14):    T1 = FETCH_R (global) string("_GET")
L3 (14):    T2 = FETCH_DIM_R T1 string("p1")
L4 (14):    ASSIGN_STATIC_PROP string("b") string("Foo")
L5 (14):    OP_DATA T2
L6 (15):    EXT_STMT
L7 (15):    INIT_STATIC_METHOD_CALL 0 string("Foo") string("baz")
L8 (15):    V3 = DO_FCALL
L9 (15):    ECHO V3
L10 (16):   RETURN int(1)

Foo::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/46_static_methods/46_static_methods.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_STATIC_PROP string("b")
L4 (6):     OP_DATA CV0($b)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

Foo::baz: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/46_static_methods/46_static_methods.php:8-12
L0 (8):     EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    T0 = FETCH_STATIC_PROP_R string("b") (self) (exception)
L3 (11):    ECHO T0
L4 (12):    EXT_STMT
L5 (12):    RETURN null
