
$_main: ; (lines=15, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/21_autoloading_classes/21_autoloading_classes.php:1-13
L0 (2):     EXT_STMT
L1 (2):     INIT_FCALL 1 96 string("spl_autoload_register")
L2 (2):     T2 = DECLARE_LAMBDA_FUNCTION string("")
L3 (4):     SEND_VAL T2 1
L4 (4):     DO_FCALL
L5 (5):     EXT_STMT
L6 (5):     T4 = FETCH_R (global) string("_GET")
L7 (5):     T5 = FETCH_DIM_R T4 string("p1")
L8 (5):     ASSIGN CV0($a) T5
L9 (6):     EXT_STMT
L10 (6):    V7 = NEW 1 string("MyClass1")
L11 (6):    SEND_VAR_EX CV0($a) 1
L12 (6):    DO_FCALL
L13 (6):    ASSIGN CV1($obj) V7
L14 (13):   RETURN int(1)
LIVE RANGES:
        7: L11 - L13 (new)

{closure}: ; (lines=8, args=1, vars=1, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/21_autoloading_classes/21_autoloading_classes.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($class_name) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     T1 = CONCAT string("./") CV0($class_name)
L4 (3):     T2 = CONCAT T1 string(".php")
L5 (3):     INCLUDE_OR_EVAL (include) T2
L6 (4):     EXT_STMT
L7 (4):     RETURN null

MyClass1::__construct: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/21_autoloading_classes/21_autoloading_classes.php:9-11
L0 (9):     EXT_NOP
L1 (9):     CV0($b) = RECV 1
L2 (10):    EXT_STMT
L3 (10):    ECHO CV0($b)
L4 (11):    EXT_STMT
L5 (11):    RETURN null
