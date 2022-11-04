
$_main: ; (lines=18, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/69_goto/69_goto.php:1-12
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($b) string("abcde")
L2 (3):     EXT_STMT
L3 (3):     ASSIGN CV1($cond) int(1)
L4 (5):     EXT_STMT
L5 (5):     ECHO CV0($b)
L6 (6):     EXT_STMT
L7 (6):     T4 = FETCH_R (global) string("_GET")
L8 (6):     T5 = FETCH_DIM_R T4 string("p1")
L9 (6):     ASSIGN CV0($b) T5
L10 (9):    EXT_STMT
L11 (9):    T7 = IS_EQUAL CV1($cond) int(1)
L12 (9):    JMPZ T7 L17
L13 (10):   EXT_STMT
L14 (10):   ASSIGN CV1($cond) int(0)
L15 (11):   EXT_STMT
L16 (11):   JMP L4
L17 (12):   RETURN int(1)
