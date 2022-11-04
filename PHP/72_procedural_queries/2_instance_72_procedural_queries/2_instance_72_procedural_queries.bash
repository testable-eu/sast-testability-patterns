
$_main: ; (lines=21, args=0, vars=2, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/96_procedural_queries/second_ex/second_ex.php:1-5
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL_BY_NAME 4 string("mysql_connect")
L6 (3):     SEND_VAL_EX string("localhost") 1
L7 (3):     SEND_VAL_EX string("my_user") 2
L8 (3):     SEND_VAL_EX string("my_password") 3
L9 (3):     SEND_VAL_EX string("world") 4
L10 (3):    V5 = DO_FCALL
L11 (3):    ASSIGN CV1($link) V5
L12 (5):    EXT_STMT
L13 (5):    INIT_FCALL_BY_NAME 2 string("mysql_query")
L14 (5):    SEND_VAR_EX CV1($link) 1
L15 (5):    T8 = ROPE_INIT 3 string("SELECT name, color, calories FROM ")
L16 (5):    T8 = ROPE_ADD 1 T8 CV0($a)
L17 (5):    T7 = ROPE_END 2 T8 string(" ORDER BY name")
L18 (5):    SEND_VAL_EX T7 2
L19 (5):    DO_FCALL
L20 (5):    RETURN int(1)
LIVE RANGES:
        8: L15 - L17 (rope)
