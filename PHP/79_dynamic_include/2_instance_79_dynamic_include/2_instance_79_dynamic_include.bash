
$_main: ; (lines=14, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/second_ex/second_ex.php:1-8
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p2")
L3 (2):     ASSIGN CV0($b) T3
L4 (3):     EXT_STMT
L5 (3):     JMPZ CV0($b) L9
L6 (4):     EXT_STMT
L7 (4):     ASSIGN CV1($file) string("a.php")
L8 (4):     JMP L11
L9 (6):     EXT_STMT
L10 (6):    ASSIGN CV1($file) string("b.php")
L11 (8):    EXT_STMT
L12 (8):    INCLUDE_OR_EVAL (include) CV1($file)
L13 (8):    RETURN int(1)
PHP Notice:  Undefined index: p2 in /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/second_ex/second_ex.php on line 2
PHP Stack trace:
PHP   1. {main}() /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/second_ex/second_ex.php:0

$_main: ; (lines=3, args=0, vars=0, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/73_dynamic_include/second_ex/b.php:1-2
L0 (2):     EXT_STMT
L1 (2):     ECHO string("safe")
L2 (2):     RETURN int(1)
safe