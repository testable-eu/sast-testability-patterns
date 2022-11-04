
$_main: ; (lines=10, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/second_ex/second_ex.php:1-22
L0 (4):     NOP
L1 (20):    EXT_STMT
L2 (20):    T1 = FETCH_R (global) string("_GET")
L3 (20):    T2 = FETCH_DIM_R T1 string("p1")
L4 (20):    ASSIGN CV0($b) T2
L5 (22):    EXT_STMT
L6 (22):    INIT_FCALL 1 160 string("f")
L7 (22):    SEND_VAR CV0($b) 1
L8 (22):    DO_FCALL
L9 (22):    RETURN int(1)

F: ; (lines=13, args=1, vars=2, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/second_ex/second_ex.php:16-19
L0 (16):    EXT_NOP
L1 (16):    CV0($b) = RECV 1
L2 (17):    EXT_STMT
L3 (17):    V2 = NEW 1 string("TestClass")
L4 (17):    SEND_VAR_EX CV0($b) 1
L5 (17):    DO_FCALL
L6 (17):    ASSIGN CV1($class) V2
L7 (18):    EXT_STMT
L8 (18):    VERIFY_RETURN_TYPE CV1($class)
L9 (18):    RETURN CV1($class)
L10 (19):   EXT_STMT
L11 (19):   VERIFY_RETURN_TYPE
L12 (19):   RETURN null
LIVE RANGES:
        2: L4 - L6 (new)

TestClass::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/second_ex/second_ex.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($foo) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_OBJ THIS string("foo")
L4 (6):     OP_DATA CV0($foo)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

TestClass::__toString: ; (lines=10, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/second_ex/second_ex.php:9-12
L0 (9):     EXT_NOP
L1 (10):    EXT_STMT
L2 (10):    T0 = FETCH_OBJ_R THIS string("foo")
L3 (10):    T1 = CONCAT string("XSS: ") T0
L4 (10):    ECHO T1
L5 (11):    EXT_STMT
L6 (11):    T2 = FETCH_OBJ_R THIS string("foo")
L7 (11):    RETURN T2
L8 (12):    EXT_STMT
L9 (12):    RETURN null
