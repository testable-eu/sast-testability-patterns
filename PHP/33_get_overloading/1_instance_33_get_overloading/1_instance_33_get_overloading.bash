
$_main: ; (lines=17, args=0, vars=3, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/30_get_overloading/30_get_overloading.php:1-18
L0 (3):     NOP
L1 (15):    EXT_STMT
L2 (15):    T3 = FETCH_R (global) string("_GET")
L3 (15):    T4 = FETCH_DIM_R T3 string("p1")
L4 (15):    ASSIGN CV0($b) T4
L5 (16):    EXT_STMT
L6 (16):    V6 = NEW 0 string("PropertyTest")
L7 (16):    DO_FCALL
L8 (16):    ASSIGN CV1($obj) V6
L9 (17):    EXT_STMT
L10 (17):   ASSIGN_OBJ CV1($obj) string("var")
L11 (17):   OP_DATA CV0($b)
L12 (18):   EXT_STMT
L13 (18):   T10 = FETCH_OBJ_R CV1($obj) string("var")
L14 (18):   T11 = CONCAT T10 string("

")
L15 (18):   ASSIGN CV2($res) T11
L16 (18):   RETURN int(1)
LIVE RANGES:
        6: L7 - L8 (new)

PropertyTest::__set: ; (lines=8, args=2, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/30_get_overloading/30_get_overloading.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($name) = RECV 1
L2 (5):     CV1($value) = RECV 2
L3 (6):     EXT_STMT
L4 (6):     ASSIGN_OBJ THIS CV0($name)
L5 (6):     OP_DATA CV1($value)
L6 (7):     EXT_STMT
L7 (7):     RETURN null

PropertyTest::__get: ; (lines=10, args=1, vars=1, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/30_get_overloading/30_get_overloading.php:9-12
L0 (9):     EXT_NOP
L1 (9):     CV0($name) = RECV 1
L2 (10):    EXT_STMT
L3 (10):    T1 = FETCH_OBJ_R THIS CV0($name)
L4 (10):    ECHO T1
L5 (11):    EXT_STMT
L6 (11):    T2 = FETCH_OBJ_R THIS CV0($name)
L7 (11):    RETURN T2
L8 (12):    EXT_STMT
L9 (12):    RETURN null