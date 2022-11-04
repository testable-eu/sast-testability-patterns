
$_main: ; (lines=21, args=0, vars=3, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/103_odbc/103_odbc.php:1-5
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($val) T4
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL_BY_NAME 3 string("odbc_connect")
L6 (3):     SEND_VAL_EX string("dsn") 1
L7 (3):     SEND_VAL_EX string("username") 2
L8 (3):     SEND_VAL_EX string("password") 3
L9 (3):     V6 = DO_FCALL
L10 (3):    ASSIGN CV1($conn) V6
L11 (4):    EXT_STMT
L12 (4):    INIT_FCALL_BY_NAME 2 string("odbc_exec")
L13 (4):    SEND_VAR_EX CV1($conn) 1
L14 (4):    T9 = ROPE_INIT 3 string("SELECT ")
L15 (4):    T9 = ROPE_ADD 1 T9 CV0($val)
L16 (4):    T8 = ROPE_END 2 T9 string(" FROM sites")
L17 (4):    SEND_VAL_EX T8 2
L18 (4):    V11 = DO_FCALL
L19 (4):    ASSIGN CV2($test) V11
L20 (5):    RETURN int(1)
LIVE RANGES:
        9: L14 - L16 (rope)
