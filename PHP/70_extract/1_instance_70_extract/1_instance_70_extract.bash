
$_main: ; (lines=16, args=0, vars=4, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/97_extract/97_extract.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T4 = FETCH_R (global) string("_GET")
L2 (2):     T5 = FETCH_DIM_R T4 string("p1")
L3 (2):     ASSIGN CV0($aaa) T5
L4 (3):     EXT_STMT
L5 (3):     T7 = INIT_ARRAY 2 CV0($aaa) string("A")
L6 (3):     T7 = ADD_ARRAY_ELEMENT string("BBB") string("B")
L7 (3):     ASSIGN CV1($arr) T7
L8 (4):     EXT_STMT
L9 (4):     INIT_FCALL 1 96 string("extract")
L10 (4):    SEND_REF CV1($arr) 1
L11 (4):    DO_FCALL
L12 (5):    EXT_STMT
L13 (5):    T10 = CONCAT CV2($A) CV3($B)
L14 (5):    ECHO T10
L15 (6):    RETURN int(1)
LIVE RANGES:
        7: L6 - L7 (tmp/var)
