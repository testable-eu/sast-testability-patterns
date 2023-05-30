
$_main:
     ; (lines=18, args=0, vars=2, tmps=9)
     ; (before optimizer)
     ; /.../PHP/72_procedural_queries/2_instance_72_procedural_queries/2_instance_72_procedural_queries.php:1-5
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($a) T3
0003 INIT_FCALL_BY_NAME 4 string("mysql_connect")
0004 SEND_VAL_EX string("localhost") 1
0005 SEND_VAL_EX string("my_user") 2
0006 SEND_VAL_EX string("my_password") 3
0007 SEND_VAL_EX string("world") 4
0008 V5 = DO_FCALL_BY_NAME
0009 ASSIGN CV1($link) V5
0010 INIT_FCALL_BY_NAME 2 string("mysql_query")
0011 SEND_VAR_EX CV1($link) 1
0012 T8 = ROPE_INIT 3 string("SELECT name, color, calories FROM ")
0013 T8 = ROPE_ADD 1 T8 CV0($a)
0014 T7 = ROPE_END 2 T8 string(" ORDER BY name")
0015 SEND_VAL_EX T7 2
0016 DO_FCALL_BY_NAME
0017 RETURN int(1)
LIVE RANGES:
     8: 0012 - 0014 (rope)
