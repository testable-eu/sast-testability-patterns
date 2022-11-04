
$_main: ; (lines=18, args=0, vars=3, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/52_conditional_assignment/52_conditional_assignment.php:1-5
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($x) int(5)
L2 (3):     EXT_STMT
L3 (3):     T4 = FETCH_R (global) string("_GET")
L4 (3):     T5 = FETCH_DIM_R T4 string("p1")
L5 (3):     ASSIGN CV1($d) T5
L6 (4):     EXT_STMT
L7 (4):     T7 = IS_SMALLER int(9) CV0($x)
L8 (4):     JMPZ T7 L12
L9 (4):     V8 = ASSIGN CV2($b) string("safe")
L10 (4):    T9 = QM_ASSIGN V8
L11 (4):    JMP L14
L12 (4):    V10 = ASSIGN CV2($b) CV1($d)
L13 (4):    T9 = QM_ASSIGN V10
L14 (4):    FREE T9
L15 (5):    EXT_STMT
L16 (5):    ECHO CV2($b)
L17 (5):    RETURN int(1)
