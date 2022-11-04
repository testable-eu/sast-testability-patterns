
$_main: ; (lines=16, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/72_wrong_sanitizer/first_ex/first_ex.php:1-9
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p")
L3 (2):     ASSIGN CV0($x) T3
L4 (5):     EXT_STMT
L5 (5):     INIT_FCALL 1 96 string("strip_tags")
L6 (5):     SEND_VAR CV0($x) 1
L7 (5):     V5 = DO_FCALL
L8 (5):     ASSIGN CV1($y) V5
L9 (7):     EXT_STMT
L10 (7):    ECHO string("
<input type="hidden" name="return" value="")
L11 (8):    EXT_STMT
L12 (8):    ECHO CV1($y)
L13 (8):    EXT_STMT
L14 (8):    ECHO string("" />
")
L15 (9):    RETURN int(1)
