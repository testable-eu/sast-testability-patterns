
$_main: ; (lines=18, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/106_track_error/106_track_error.php:1-5
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     T5 = BEGIN_SILENCE
L6 (3):     INIT_FCALL 1 96 string("trigger_error")
L7 (3):     SEND_VAR CV0($a) 1
L8 (3):     DO_FCALL
L9 (3):     END_SILENCE T5
L10 (4):    EXT_STMT
L11 (4):    INIT_FCALL 0 80 string("error_get_last")
L12 (4):    V7 = DO_FCALL
L13 (4):    ASSIGN CV1($e) V7
L14 (5):    EXT_STMT
L15 (5):    T9 = FETCH_DIM_R CV1($e) string("message")
L16 (5):    ECHO T9
L17 (5):    RETURN int(1)
LIVE RANGES:
        5: L6 - L9 (silence)