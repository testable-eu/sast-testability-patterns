
$_main: ; (lines=12, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/12_get_arguments/12_get_arguments.php:1-11
L0 (10):    EXT_STMT
L1 (10):    T1 = FETCH_R (global) string("_GET")
L2 (10):    T2 = FETCH_DIM_R T1 string("p1")
L3 (10):    ASSIGN CV0($b) T2
L4 (11):    EXT_STMT
L5 (11):    INIT_FCALL 4 192 string("sum")
L6 (11):    SEND_VAL int(1) 1
L7 (11):    SEND_VAL int(2) 2
L8 (11):    SEND_VAL int(3) 3
L9 (11):    SEND_VAR CV0($b) 4
L10 (11):   DO_FCALL
L11 (11):   RETURN int(1)

sum: ; (lines=11, args=0, vars=1, tmps=2)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/12_get_arguments/12_get_arguments.php:2-8
L0 (2):     EXT_NOP
L1 (5):     EXT_STMT
L2 (5):     T1 = FUNC_GET_ARGS
L3 (5):     V2 = FE_RESET_R T1 L8
L4 (5):     FE_FETCH_R V2 CV0($n) L8
L5 (6):     EXT_STMT
L6 (6):     ECHO CV0($n)
L7 (5):     JMP L4
L8 (5):     FE_FREE V2
L9 (8):     EXT_STMT
L10 (8):    RETURN null
LIVE RANGES:
        2: L4 - L8 (loop)