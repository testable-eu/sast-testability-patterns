
$_main: ; (lines=27, args=0, vars=1, tmps=12)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/70_dirname/folder/a.php:1-10
L0 (3):     EXT_STMT
L1 (3):     T1 = FETCH_R (global) string("_GET")
L2 (3):     T2 = FETCH_DIM_R T1 string("p1")
L3 (3):     ASSIGN CV0($a) T2
L4 (6):     EXT_STMT
L5 (6):     INIT_FCALL 2 112 string("define")
L6 (6):     SEND_VAL string("DIR_ROOT") 1
L7 (6):     INIT_FCALL 1 96 string("dirname")
L8 (6):     INIT_FCALL 1 96 string("dirname")
L9 (6):     SEND_VAL string("/home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/70_dirname/folder/a.php") 1
L10 (6):    V4 = DO_FCALL
L11 (6):    SEND_VAR V4 1
L12 (6):    V5 = DO_FCALL
L13 (6):    SEND_VAR V5 2
L14 (6):    DO_FCALL
L15 (7):    EXT_STMT
L16 (7):    INIT_FCALL 2 112 string("define")
L17 (7):    SEND_VAL string("DIR_INC") 1
L18 (7):    T7 = FETCH_CONSTANT (unqualified) string("DIR_ROOT")
L19 (7):    T8 = CONCAT T7 string("/_includes")
L20 (7):    SEND_VAL T8 2
L21 (7):    DO_FCALL
L22 (9):    EXT_STMT
L23 (9):    T10 = FETCH_CONSTANT (unqualified) string("DIR_INC")
L24 (9):    T11 = CONCAT T10 string("/ttt/b.php")
L25 (9):    INCLUDE_OR_EVAL (include) T11
L26 (10):   RETURN int(1)

$_main: ; (lines=5, args=0, vars=0, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/70_dirname/_includes/ttt/b.php:1-4
L0 (3):     EXT_STMT
L1 (3):     T0 = FETCH_R (global) string("GLOBALS")
L2 (3):     T1 = FETCH_DIM_R T0 string("a")
L3 (3):     ECHO T1
L4 (4):     RETURN int(1)
