
$_main: ; (lines=9, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/23_new_self/23_new_self.php:1-23
L0 (21):    EXT_STMT
L1 (21):    V2 = NEW 0 string("myclass")
L2 (21):    DO_FCALL
L3 (21):    ASSIGN CV0($obj) V2
L4 (22):    EXT_STMT
L5 (22):    INIT_METHOD_CALL 0 CV0($obj) string("F")
L6 (22):    V5 = DO_FCALL
L7 (22):    ASSIGN CV1($obj2) V5
L8 (23):    RETURN int(1)
LIVE RANGES:
        2: L2 - L3 (new)

myclass::__construct: ; (lines=8, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/23_new_self/23_new_self.php:5-8
L0 (5):     EXT_NOP
L1 (6):     EXT_STMT
L2 (6):     T1 = FETCH_R (global) string("_GET")
L3 (6):     T2 = FETCH_DIM_R T1 string("p1")
L4 (6):     ASSIGN_OBJ THIS string("b")
L5 (6):     OP_DATA T2
L6 (8):     EXT_STMT
L7 (8):     RETURN null

myclass::F: ; (lines=10, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/23_new_self/23_new_self.php:10-13
L0 (10):    EXT_NOP
L1 (11):    EXT_STMT
L2 (11):    V1 = NEW 0 (self) (exception)
L3 (11):    DO_FCALL
L4 (11):    ASSIGN CV0($obj2) V1
L5 (12):    EXT_STMT
L6 (12):    INIT_METHOD_CALL 0 CV0($obj2) string("T")
L7 (12):    DO_FCALL
L8 (13):    EXT_STMT
L9 (13):    RETURN null
LIVE RANGES:
        1: L3 - L4 (new)

myclass::T: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/23_new_self/23_new_self.php:15-17
L0 (15):    EXT_NOP
L1 (16):    EXT_STMT
L2 (16):    T0 = FETCH_OBJ_R THIS string("b")
L3 (16):    ECHO T0
L4 (17):    EXT_STMT
L5 (17):    RETURN null
