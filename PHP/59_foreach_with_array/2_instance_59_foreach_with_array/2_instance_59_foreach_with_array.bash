
$_main:
     ; (lines=19, args=0, vars=4, tmps=11)
     ; (before optimizer)
     ; /.../PHP/59_foreach_with_array/2_instance_59_foreach_with_array/2_instance_59_foreach_with_array.php:1-14
     ; return  [] RANGE[0..0]
0000 T4 = FETCH_R (global) string("_GET")
0001 T5 = FETCH_DIM_R T4 string("p1")
0002 ASSIGN CV0($b) T5
0003 T7 = INIT_ARRAY 4 string("bar") string("foo")
0004 T7 = ADD_ARRAY_ELEMENT string("foo") string("bar")
0005 T7 = ADD_ARRAY_ELEMENT CV0($b) string("too")
0006 T7 = ADD_ARRAY_ELEMENT int(100) int(-100)
0007 ASSIGN CV1($array) T7
0008 V9 = FE_RESET_R CV1($array) 0017
0009 T10 = FE_FETCH_R V9 CV2($value) 0017
0010 ASSIGN CV3($key) T10
0011 T13 = ROPE_INIT 4 CV3($key)
0012 T13 = ROPE_ADD 1 T13 string(" => ")
0013 T13 = ROPE_ADD 2 T13 CV2($value)
0014 T12 = ROPE_END 3 T13 string("
")
0015 ECHO T12
0016 JMP 0009
0017 FE_FREE V9
0018 RETURN int(1)
LIVE RANGES:
     7: 0004 - 0007 (tmp/var)
     9: 0009 - 0017 (loop)
     13: 0011 - 0014 (rope)
