
$_main: ; (lines=13, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/29_set_overloading/29_set_overloading.php:1-12
L0 (3):     NOP
L1 (10):    EXT_STMT
L2 (10):    T2 = FETCH_R (global) string("_GET")
L3 (10):    T3 = FETCH_DIM_R T2 string("p1")
L4 (10):    ASSIGN CV0($b) T3
L5 (11):    EXT_STMT
L6 (11):    V5 = NEW 0 string("PropertyTest")
L7 (11):    DO_FCALL
L8 (11):    ASSIGN CV1($obj) V5
L9 (12):    EXT_STMT
L10 (12):   ASSIGN_OBJ CV1($obj) string("var")
L11 (12):   OP_DATA CV0($b)
L12 (12):   RETURN int(1)
LIVE RANGES:
        5: L7 - L8 (new)

PropertyTest::__set: ; (lines=7, args=2, vars=2, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/29_set_overloading/29_set_overloading.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($name) = RECV 1
L2 (5):     CV1($value) = RECV 2
L3 (6):     EXT_STMT
L4 (6):     ECHO CV1($value)
L5 (7):     EXT_STMT
L6 (7):     RETURN null
