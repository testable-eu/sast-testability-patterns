
$_main: ; (lines=26, args=0, vars=7, tmps=13)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/99_compact/second_ex/second_ex.php:1-9
L0 (2):     EXT_STMT
L1 (2):     T7 = FETCH_R (global) string("_GET")
L2 (2):     T8 = FETCH_DIM_R T7 string("p1")
L3 (2):     ASSIGN CV0($a) T8
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($city) string("San Francisco")
L6 (4):     EXT_STMT
L7 (4):     ASSIGN CV2($state) string("CA")
L8 (5):     EXT_STMT
L9 (5):     ASSIGN CV3($event) CV0($a)
L10 (6):    EXT_STMT
L11 (6):    T13 = FETCH_R (global) string("_GET")
L12 (6):    T14 = FETCH_DIM_R T13 string("p2")
L13 (6):    ASSIGN CV4($x) T14
L14 (7):    EXT_STMT
L15 (7):    ASSIGN CV5($location_vars) array(...)
L16 (8):    EXT_STMT
L17 (8):    INIT_FCALL 2 112 string("compact")
L18 (8):    SEND_VAR CV4($x) 1
L19 (8):    SEND_VAR CV5($location_vars) 2
L20 (8):    V17 = DO_FCALL
L21 (8):    ASSIGN CV6($result) V17
L22 (9):    EXT_STMT
L23 (9):    T19 = FETCH_DIM_R CV6($result) string("event")
L24 (9):    ECHO T19
L25 (9):    RETURN int(1)
