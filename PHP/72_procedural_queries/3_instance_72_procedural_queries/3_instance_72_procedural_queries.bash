
$_main:
     ; (lines=18, args=0, vars=3, tmps=9)
     ; (before optimizer)
     ; /.../PHP/72_procedural_queries/3_instance_72_procedural_queries/3_instance_72_procedural_queries.php:1-6
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($a) T4
0003 INIT_FCALL_BY_NAME 4 string("mysql_connect")
0004 SEND_VAL_EX string("localhost") 1
0005 SEND_VAL_EX string("my_user") 2
0006 SEND_VAL_EX string("my_password") 3
0007 SEND_VAL_EX string("world") 4
0008 V6 = DO_FCALL_BY_NAME
0009 ASSIGN CV1($link) V6
0010 T8 = CONCAT string("SELECT name, color, calories FROM ") CV0($a)
0011 T9 = CONCAT T8 string("ORDER BY name")
0012 ASSIGN CV2($sql) T9
0013 INIT_FCALL_BY_NAME 2 string("mysql_query")
0014 SEND_VAR_EX CV1($link) 1
0015 SEND_VAR_EX CV2($sql) 2
0016 DO_FCALL_BY_NAME
0017 RETURN int(1)
