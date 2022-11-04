
$_main: ; (lines=12, args=0, vars=0, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/125_window_location/125_window_location.php:1-8
L0 (3):     EXT_STMT
L1 (3):     INIT_FCALL 0 80 string("session_start")
L2 (3):     DO_FCALL
L3 (5):     EXT_STMT
L4 (5):     T3 = FETCH_R (global) string("_GET")
L5 (5):     T4 = FETCH_DIM_R T3 string("p1")
L6 (5):     V1 = FETCH_W (global) string("_SESSION")
L7 (5):     ASSIGN_DIM V1 string("abc")
L8 (5):     OP_DATA T4
L9 (7):     EXT_STMT
L10 (7):    ECHO string("<script> window.location='a.php' </script>")
L11 (8):    RETURN int(1)
LIVE RANGES:
        4: L6 - L7 (tmp/var)