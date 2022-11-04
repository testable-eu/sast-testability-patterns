
$_main: ; (lines=14, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/67_trait/67_trait.php:1-16
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($b) T3
L4 (10):    DECLARE_CLASS string("myhelloworld")
L5 (14):    EXT_STMT
L6 (14):    V5 = NEW 0 string("MyHelloWorld")
L7 (14):    DO_FCALL
L8 (14):    ASSIGN CV1($o) V5
L9 (16):    EXT_STMT
L10 (16):   INIT_METHOD_CALL 1 CV1($o) string("sayHello")
L11 (16):   SEND_VAR_EX CV0($b) 1
L12 (16):   DO_FCALL
L13 (16):   RETURN int(1)
LIVE RANGES:
        5: L7 - L8 (new)

SayWorld::sayHello: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/67_trait/67_trait.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($b)
L4 (7):     EXT_STMT
L5 (7):     RETURN null
