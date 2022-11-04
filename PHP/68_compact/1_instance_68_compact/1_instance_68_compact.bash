
$_main: ; (lines=24, args=0, vars=6, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/99_compact/first_ex/first_ex.php:1-11
L0 (2):     EXT_STMT
L1 (2):     T6 = FETCH_R (global) string("_GET")
L2 (2):     T7 = FETCH_DIM_R T6 string("p1")
L3 (2):     ASSIGN CV0($a) T7
L4 (3):     EXT_STMT
L5 (3):     ASSIGN CV1($city) string("San Francisco")
L6 (4):     EXT_STMT
L7 (4):     ASSIGN CV2($state) string("CA")
L8 (5):     EXT_STMT
L9 (5):     ASSIGN CV3($event) CV0($a)
L10 (7):    EXT_STMT
L11 (7):    ASSIGN CV4($location_vars) array(...)
L12 (8):    EXT_STMT
L13 (8):    ASSIGN CV3($event) string("event")
L14 (9):    EXT_STMT
L15 (9):    INIT_FCALL 2 112 string("compact")
L16 (9):    SEND_VAR CV3($event) 1
L17 (9):    SEND_VAR CV4($location_vars) 2
L18 (9):    V14 = DO_FCALL
L19 (9):    ASSIGN CV5($result) V14
L20 (10):   EXT_STMT
L21 (10):   T16 = FETCH_DIM_R CV5($result) string("event")
L22 (10):   ECHO T16
L23 (11):   RETURN int(1)
