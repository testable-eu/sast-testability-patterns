
$_main: ; (lines=12, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /tp-framework/testability_patterns/PHP/11_foreach_with_reference/2_instance_11_foreach_with_reference/2_instance_11_foreach_with_reference.php:1-11
L0 (2):     ASSIGN CV0($arr) array(...)
L1 (3):     T4 = FETCH_R (global) string("_GET")
L2 (3):     T5 = FETCH_DIM_R T4 string("p1")
L3 (3):     ASSIGN CV1($a) T5
L4 (4):     V7 = FE_RESET_RW CV0($arr) L8
L5 (4):     FE_FETCH_RW V7 CV2($x) L8
L6 (7):     ASSIGN CV2($x) CV1($a)
L7 (4):     JMP L5
L8 (4):     FE_FREE V7
L9 (10):    T9 = FETCH_DIM_R CV0($arr) int(0)
L10 (10):   ECHO T9
L11 (11):   RETURN int(1)
LIVE RANGES:
        7: L5 - L8 (loop)