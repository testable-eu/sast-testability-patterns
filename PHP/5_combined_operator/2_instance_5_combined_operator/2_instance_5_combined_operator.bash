
$_main: ; (lines=7, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /tp-framework/testability_patterns/PHP/5_combined_operator/2_instance_5_combined_operator/2_instance_5_combined_operator.php:1-3
L0 (2):     T2 = FETCH_R (global) string("_GET")
L1 (2):     T3 = FETCH_DIM_R T2 string("p1")
L2 (2):     V4 = ASSIGN CV1($b) T3
L3 (2):     T5 = CONCAT V4 string(" safe")
L4 (2):     ASSIGN CV0($a) T5
L5 (3):     ECHO CV0($a)
L6 (3):     RETURN int(1)
