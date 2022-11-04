
$_main: ; (lines=16, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/first_ex/first_ex.php:1-23
L0 (4):     NOP
L1 (5):     NOP
L2 (21):    EXT_STMT
L3 (21):    T2 = FETCH_R (global) string("_GET")
L4 (21):    T3 = FETCH_DIM_R T2 string("p1")
L5 (21):    ASSIGN CV0($b) T3
L6 (22):    EXT_STMT
L7 (22):    V5 = NEW 1 string("TestClass")
L8 (22):    SEND_VAR_EX CV0($b) 1
L9 (22):    DO_FCALL
L10 (22):   ASSIGN CV1($c) V5
L11 (23):   EXT_STMT
L12 (23):   INIT_FCALL 1 96 string("f")
L13 (23):   SEND_VAR CV1($c) 1
L14 (23):   DO_FCALL
L15 (23):   RETURN int(1)
LIVE RANGES:
        5: L8 - L10 (new)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/first_ex/first_ex.php:17-19
L0 (17):    EXT_NOP
L1 (17):    CV0($c) = RECV 1
L2 (18):    EXT_STMT
L3 (18):    ECHO string("message")
L4 (19):    EXT_STMT
L5 (19):    RETURN null

TestClass::__construct: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/first_ex/first_ex.php:6-8
L0 (6):     EXT_NOP
L1 (6):     CV0($foo) = RECV 1
L2 (7):     EXT_STMT
L3 (7):     ASSIGN_OBJ THIS string("foo")
L4 (7):     OP_DATA CV0($foo)
L5 (8):     EXT_STMT
L6 (8):     RETURN null

TestClass::__toString: ; (lines=10, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/85_verify_return_type/first_ex/first_ex.php:10-13
L0 (10):    EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    T0 = FETCH_OBJ_R THIS string("foo")
L3 (11):    T1 = CONCAT string("XSS: ") T0
L4 (11):    ECHO T1
L5 (12):    EXT_STMT
L6 (12):    T2 = FETCH_OBJ_R THIS string("foo")
L7 (12):    RETURN T2
L8 (13):    EXT_STMT
L9 (13):    RETURN null
