
$_main: ; (lines=13, args=0, vars=1, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/1_static_variables/1_static_variables.php:1-11
L0 (9):     EXT_STMT
L1 (9):     T1 = FETCH_R (global) string("_GET")
L2 (9):     T2 = FETCH_DIM_R T1 string("p1")
L3 (9):     ASSIGN CV0($a) T2
L4 (10):    EXT_STMT
L5 (10):    INIT_FCALL 1 128 string("f")
L6 (10):    SEND_VAR CV0($a) 1
L7 (10):    DO_FCALL
L8 (11):    EXT_STMT
L9 (11):    INIT_FCALL 1 128 string("f")
L10 (11):   SEND_VAL string("abc") 1
L11 (11):   DO_FCALL
L12 (11):   RETURN int(1)

F: ; (lines=10, args=1, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/1_static_variables/1_static_variables.php:3-7
L0 (3):     EXT_NOP
L1 (3):     CV0($a) = RECV 1
L2 (4):     EXT_STMT
L3 (4):     BIND_STATIC (ref) CV1($b)
L4 (5):     EXT_STMT
L5 (5):     ECHO CV1($b)
L6 (6):     EXT_STMT
L7 (6):     ASSIGN CV1($b) CV0($a)
L8 (7):     EXT_STMT
L9 (7):     RETURN null