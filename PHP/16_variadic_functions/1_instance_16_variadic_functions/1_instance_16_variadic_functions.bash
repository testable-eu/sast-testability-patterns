
$_main: ; (lines=12, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/10_variadic_functions/10_variadic_functions.php:1-12
L0 (11):    EXT_STMT
L1 (11):    T1 = FETCH_R (global) string("_GET")
L2 (11):    T2 = FETCH_DIM_R T1 string("p1")
L3 (11):    ASSIGN CV0($b) T2
L4 (12):    EXT_STMT
L5 (12):    INIT_FCALL 4 192 string("sum")
L6 (12):    SEND_VAL int(1) 1
L7 (12):    SEND_VAL int(2) 2
L8 (12):    SEND_VAL int(3) 3
L9 (12):    SEND_VAR CV0($b) 4
L10 (12):   DO_FCALL
L11 (12):   RETURN int(1)

sum: ; (lines=11, args=0, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/10_variadic_functions/10_variadic_functions.php:4-9
L0 (4):     EXT_NOP
L1 (4):     CV0($numbers) = RECV_VARIADIC 1
L2 (5):     EXT_STMT
L3 (5):     V2 = FE_RESET_R CV0($numbers) L8
L4 (5):     FE_FETCH_R V2 CV1($n) L8
L5 (7):     EXT_STMT
L6 (7):     ECHO CV1($n)
L7 (5):     JMP L4
L8 (5):     FE_FREE V2
L9 (9):     EXT_STMT
L10 (9):    RETURN null
LIVE RANGES:
        2: L4 - L8 (loop)