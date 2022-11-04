
$_main: ; (lines=16, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/121_object_assigned_by_reference/121_object_assigned_by_reference.php:1-9
L0 (3):     NOP
L1 (5):     EXT_STMT
L2 (5):     ASSIGN CV0($x) string("safe")
L3 (6):     EXT_STMT
L4 (6):     ASSIGN CV1($obj) string("abc")
L5 (7):     EXT_STMT
L6 (7):     ASSIGN_OBJ_REF CV1($obj) string("prop")
L7 (7):     OP_DATA CV0($x)
L8 (8):     EXT_STMT
L9 (8):     T5 = FETCH_R (global) string("_GET")
L10 (8):    T6 = FETCH_DIM_R T5 string("p1")
L11 (8):    ASSIGN CV0($x) T6
L12 (9):    EXT_STMT
L13 (9):    T8 = FETCH_OBJ_R CV1($obj) string("prop")
L14 (9):    ECHO T8
L15 (9):    RETURN int(1)
