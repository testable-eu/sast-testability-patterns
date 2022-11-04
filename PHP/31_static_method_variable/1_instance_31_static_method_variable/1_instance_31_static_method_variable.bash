
$_main: ; (lines=11, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/115_static_method_variable/115_static_method_variable.php:1-14
L0 (10):    EXT_STMT
L1 (10):    T2 = FETCH_R (global) string("_GET")
L2 (10):    T3 = FETCH_DIM_R T2 string("p1")
L3 (10):    ASSIGN CV0($a) T3
L4 (12):    EXT_STMT
L5 (12):    ASSIGN CV1($func) string("F")
L6 (13):    EXT_STMT
L7 (13):    INIT_STATIC_METHOD_CALL 1 string("myclass") CV1($func)
L8 (13):    SEND_VAR_EX CV0($a) 1
L9 (13):    DO_FCALL
L10 (14):   RETURN int(1)

myclass::F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/115_static_method_variable/115_static_method_variable.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($b) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($b)
L4 (7):     EXT_STMT
L5 (7):     RETURN null
