
$_main:
     ; (lines=18, args=0, vars=3, tmps=10)
     ; (before optimizer)
     ; /.../PHP/67_odbc/1_instance_67_odbc/1_instance_67_odbc.php:1-4
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($val) T4
0003 INIT_FCALL_BY_NAME 3 string("odbc_connect")
0004 SEND_VAL_EX string("dsn") 1
0005 SEND_VAL_EX string("username") 2
0006 SEND_VAL_EX string("password") 3
0007 V6 = DO_FCALL_BY_NAME
0008 ASSIGN CV1($conn) V6
0009 INIT_FCALL_BY_NAME 2 string("odbc_exec")
0010 SEND_VAR_EX CV1($conn) 1
0011 T9 = ROPE_INIT 3 string("SELECT ")
0012 T9 = ROPE_ADD 1 T9 CV0($val)
0013 T8 = ROPE_END 2 T9 string(" FROM sites")
0014 SEND_VAL_EX T8 2
0015 V11 = DO_FCALL_BY_NAME
0016 ASSIGN CV2($test) V11
0017 RETURN int(1)
LIVE RANGES:
     9: 0011 - 0013 (rope)
