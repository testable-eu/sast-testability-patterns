
$_main:
     ; (lines=9, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /.../PHP/48_construct_with_inheritance/1_instance_48_construct_with_inheritance/1_instance_48_construct_with_inheritance.php:1-16
     ; return  [] RANGE[0..0]
0000 T2 = FETCH_R (global) string("_GET")
0001 T3 = FETCH_DIM_R T2 string("p1")
0002 ASSIGN CV0($b) T3
0003 V5 = NEW 1 string("child_class")
0004 SEND_VAR_EX CV0($b) 1
0005 DO_FCALL
0006 ASSIGN CV1($a) V5
0007 ECHO CV1($a)
0008 RETURN int(1)
LIVE RANGES:
     5: 0004 - 0006 (new)

parent_class::__construct:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /.../PHP/48_construct_with_inheritance/1_instance_48_construct_with_inheritance/1_instance_48_construct_with_inheritance.php:4-6
     ; return  [] RANGE[0..0]
0000 CV0($b) = RECV 1
0001 RETURN CV0($b)
0002 RETURN null
