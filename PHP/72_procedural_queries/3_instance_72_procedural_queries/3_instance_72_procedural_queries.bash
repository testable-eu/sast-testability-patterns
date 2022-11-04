
$_main: ; (lines=22, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/96_procedural_queries/third_ex/third_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($a) T4
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL_BY_NAME 4 string("mysql_connect")
L6 (3):     SEND_VAL_EX string("localhost") 1
L7 (3):     SEND_VAL_EX string("my_user") 2
L8 (3):     SEND_VAL_EX string("my_password") 3
L9 (3):     SEND_VAL_EX string("world") 4
L10 (3):    V6 = DO_FCALL
L11 (3):    ASSIGN CV1($link) V6
L12 (5):    EXT_STMT
L13 (5):    T8 = CONCAT string("SELECT name, color, calories FROM ") CV0($a)
L14 (5):    T9 = CONCAT T8 string("ORDER BY name")
L15 (5):    ASSIGN CV2($sql) T9
L16 (6):    EXT_STMT
L17 (6):    INIT_FCALL_BY_NAME 2 string("mysql_query")
L18 (6):    SEND_VAR_EX CV1($link) 1
L19 (6):    SEND_VAR_EX CV2($sql) 2
L20 (6):    DO_FCALL
L21 (6):    RETURN int(1)
