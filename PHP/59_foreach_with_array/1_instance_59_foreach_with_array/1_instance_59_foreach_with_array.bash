
$_main:
     ; (lines=22, args=0, vars=3, tmps=11)
     ; (before optimizer)
     ; /.../PHP/59_foreach_with_array/1_instance_59_foreach_with_array/1_instance_59_foreach_with_array.php:1-12
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 T6 = INIT_ARRAY 4 string("bar") string("foo")
0004 T6 = ADD_ARRAY_ELEMENT string("foo") string("bar")
0005 T6 = ADD_ARRAY_ELEMENT CV0($b) string("too")
0006 T6 = ADD_ARRAY_ELEMENT int(100) int(-100)
0007 ASSIGN CV1($array) T6
0008 INIT_FCALL 1 96 string("array_keys")
0009 SEND_VAR CV1($array) 1
0010 V8 = DO_ICALL
0011 V9 = FE_RESET_R V8 0020
0012 FE_FETCH_R V9 CV2($key) 0020
0013 T12 = ROPE_INIT 4 CV2($key)
0014 T12 = ROPE_ADD 1 T12 string(" => ")
0015 T10 = FETCH_DIM_R CV1($array) CV2($key)
0016 T12 = ROPE_ADD 2 T12 T10
0017 T11 = ROPE_END 3 T12 string("
")
0018 ECHO T11
0019 JMP 0012
0020 FE_FREE V9
0021 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0007 (tmp/var)
     9: 0012 - 0020 (loop)
     12: 0013 - 0017 (rope)
