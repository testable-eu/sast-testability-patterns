
$_main: ; (lines=16, args=0, vars=1, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/123_make_ref/first_ex/123_make_ref.php:1-5
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($arr) array(...)
L2 (3):     EXT_STMT
L3 (3):     V3 = FETCH_DIM_W CV0($arr) int(3)
L4 (3):     V4 = MAKE_REF V3
L5 (3):     V2 = FETCH_DIM_W CV0($arr) int(1)
L6 (3):     ASSIGN_REF V2 V4
L7 (4):     EXT_STMT
L8 (4):     T7 = FETCH_R (global) string("_GET")
L9 (4):     T8 = FETCH_DIM_R T7 string("p1")
L10 (4):    ASSIGN_DIM CV0($arr) int(3)
L11 (4):    OP_DATA T8
L12 (5):    EXT_STMT
L13 (5):    T9 = FETCH_DIM_R CV0($arr) int(1)
L14 (5):    ECHO T9
L15 (5):    RETURN int(1)
LIVE RANGES:
        4: L5 - L6 (tmp/var)
