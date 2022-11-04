# Pattern: String Arithmetic Operations

## Category

Variables

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  YES
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$a = $_GET["p1"];
//$a = "abc";
$a++;
echo $a."\n";

$a = $_GET["p1"];
//$a = "abc";
$a--;
echo $a."\n";

$a = $_GET["p1"];
//$a = "abc";
++$a;
echo $a."\n";

$a = $_GET["p1"];
//$a = "abc";
--$a;
echo $a."\n";

class static_class{
	public static $a;
}

$a = $_GET["p1"];
static_class::$a = "abc";
--static_class::$a;
echo static_class::$a."\n";

$a = $_GET["p1"];
static_class::$a = "abc";
++static_class::$a;
echo static_class::$a."\n";

$a = $_GET["p1"];
static_class::$a = "abc";
static_class::$a--;
echo static_class::$a."\n";

$a = $_GET["p1"];
static_class::$a = "abc";
static_class::$a++;
echo static_class::$a."\n";

class myclass{
	public $a;
}

$a = $_GET["p1"];
//$b = "abc";
$obj = new myclass();
$obj->a = $a;
--$obj->a;
echo $obj->a."\n";

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$obj->a = $a;
++$obj->a;
echo $obj->a."\n";

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$obj->a = $a;
$obj->a--;
echo $obj->a."\n";

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$obj->a = $a;
$obj->a++;
echo $obj->a."\n";
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  | YES     |YES   | NO        | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash

$_main: ; (lines=165, args=0, vars=2, tmps=88)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/62_string_arithmetic_operations/62_string_arithmetic_operations.php:1-77
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($a) T3
L4 (4):     EXT_STMT
L5 (4):     T5 = POST_INC CV0($a)
L6 (4):     FREE T5
L7 (5):     EXT_STMT
L8 (5):     T6 = CONCAT CV0($a) string("
")
L9 (5):     ECHO T6
L10 (7):    EXT_STMT
L11 (7):    T7 = FETCH_R (global) string("_GET")
L12 (7):    T8 = FETCH_DIM_R T7 string("p1")
L13 (7):    ASSIGN CV0($a) T8
L14 (9):    EXT_STMT
L15 (9):    T10 = POST_DEC CV0($a)
L16 (9):    FREE T10
L17 (10):   EXT_STMT
L18 (10):   T11 = CONCAT CV0($a) string("
")
L19 (10):   ECHO T11
L20 (12):   EXT_STMT
L21 (12):   T12 = FETCH_R (global) string("_GET")
L22 (12):   T13 = FETCH_DIM_R T12 string("p1")
L23 (12):   ASSIGN CV0($a) T13
L24 (14):   EXT_STMT
L25 (14):   PRE_INC CV0($a)
L26 (15):   EXT_STMT
L27 (15):   T16 = CONCAT CV0($a) string("
")
L28 (15):   ECHO T16
L29 (17):   EXT_STMT
L30 (17):   T17 = FETCH_R (global) string("_GET")
L31 (17):   T18 = FETCH_DIM_R T17 string("p1")
L32 (17):   ASSIGN CV0($a) T18
L33 (19):   EXT_STMT
L34 (19):   PRE_DEC CV0($a)
L35 (20):   EXT_STMT
L36 (20):   T21 = CONCAT CV0($a) string("
")
L37 (20):   ECHO T21
L38 (23):   NOP
L39 (26):   EXT_STMT
L40 (26):   T22 = FETCH_R (global) string("_GET")
L41 (26):   T23 = FETCH_DIM_R T22 string("p1")
L42 (26):   ASSIGN CV0($a) T23
L43 (27):   EXT_STMT
L44 (27):   ASSIGN_STATIC_PROP string("a") string("static_class")
L45 (27):   OP_DATA string("abc")
L46 (28):   EXT_STMT
L47 (28):   PRE_DEC_STATIC_PROP string("a") string("static_class")
L48 (29):   EXT_STMT
L49 (29):   T27 = FETCH_STATIC_PROP_R string("a") string("static_class")
L50 (29):   T28 = CONCAT T27 string("
")
L51 (29):   ECHO T28
L52 (31):   EXT_STMT
L53 (31):   T29 = FETCH_R (global) string("_GET")
L54 (31):   T30 = FETCH_DIM_R T29 string("p1")
L55 (31):   ASSIGN CV0($a) T30
L56 (32):   EXT_STMT
L57 (32):   ASSIGN_STATIC_PROP string("a") string("static_class")
L58 (32):   OP_DATA string("abc")
L59 (33):   EXT_STMT
L60 (33):   PRE_INC_STATIC_PROP string("a") string("static_class")
L61 (34):   EXT_STMT
L62 (34):   T34 = FETCH_STATIC_PROP_R string("a") string("static_class")
L63 (34):   T35 = CONCAT T34 string("
")
L64 (34):   ECHO T35
L65 (36):   EXT_STMT
L66 (36):   T36 = FETCH_R (global) string("_GET")
L67 (36):   T37 = FETCH_DIM_R T36 string("p1")
L68 (36):   ASSIGN CV0($a) T37
L69 (37):   EXT_STMT
L70 (37):   ASSIGN_STATIC_PROP string("a") string("static_class")
L71 (37):   OP_DATA string("abc")
L72 (38):   EXT_STMT
L73 (38):   T40 = POST_DEC_STATIC_PROP string("a") string("static_class")
L74 (38):   FREE T40
L75 (39):   EXT_STMT
L76 (39):   T41 = FETCH_STATIC_PROP_R string("a") string("static_class")
L77 (39):   T42 = CONCAT T41 string("
")
L78 (39):   ECHO T42
L79 (41):   EXT_STMT
L80 (41):   T43 = FETCH_R (global) string("_GET")
L81 (41):   T44 = FETCH_DIM_R T43 string("p1")
L82 (41):   ASSIGN CV0($a) T44
L83 (42):   EXT_STMT
L84 (42):   ASSIGN_STATIC_PROP string("a") string("static_class")
L85 (42):   OP_DATA string("abc")
L86 (43):   EXT_STMT
L87 (43):   T47 = POST_INC_STATIC_PROP string("a") string("static_class")
L88 (43):   FREE T47
L89 (44):   EXT_STMT
L90 (44):   T48 = FETCH_STATIC_PROP_R string("a") string("static_class")
L91 (44):   T49 = CONCAT T48 string("
")
L92 (44):   ECHO T49
L93 (47):   NOP
L94 (50):   EXT_STMT
L95 (50):   T50 = FETCH_R (global) string("_GET")
L96 (50):   T51 = FETCH_DIM_R T50 string("p1")
L97 (50):   ASSIGN CV0($a) T51
L98 (52):   EXT_STMT
L99 (52):   V53 = NEW 0 string("myclass")
L100 (52):  DO_FCALL
L101 (52):  ASSIGN CV1($obj) V53
L102 (53):  EXT_STMT
L103 (53):  ASSIGN_OBJ CV1($obj) string("a")
L104 (53):  OP_DATA CV0($a)
L105 (54):  EXT_STMT
L106 (54):  PRE_DEC_OBJ CV1($obj) string("a")
L107 (55):  EXT_STMT
L108 (55):  T58 = FETCH_OBJ_R CV1($obj) string("a")
L109 (55):  T59 = CONCAT T58 string("
")
L110 (55):  ECHO T59
L111 (57):  EXT_STMT
L112 (57):  T60 = FETCH_R (global) string("_GET")
L113 (57):  T61 = FETCH_DIM_R T60 string("p1")
L114 (57):  ASSIGN CV0($a) T61
L115 (59):  EXT_STMT
L116 (59):  V63 = NEW 0 string("myclass")
L117 (59):  DO_FCALL
L118 (59):  ASSIGN CV1($obj) V63
L119 (60):  EXT_STMT
L120 (60):  ASSIGN_OBJ CV1($obj) string("a")
L121 (60):  OP_DATA CV0($a)
L122 (61):  EXT_STMT
L123 (61):  PRE_INC_OBJ CV1($obj) string("a")
L124 (62):  EXT_STMT
L125 (62):  T68 = FETCH_OBJ_R CV1($obj) string("a")
L126 (62):  T69 = CONCAT T68 string("
")
L127 (62):  ECHO T69
L128 (64):  EXT_STMT
L129 (64):  T70 = FETCH_R (global) string("_GET")
L130 (64):  T71 = FETCH_DIM_R T70 string("p1")
L131 (64):  ASSIGN CV0($a) T71
L132 (66):  EXT_STMT
L133 (66):  V73 = NEW 0 string("myclass")
L134 (66):  DO_FCALL
L135 (66):  ASSIGN CV1($obj) V73
L136 (67):  EXT_STMT
L137 (67):  ASSIGN_OBJ CV1($obj) string("a")
L138 (67):  OP_DATA CV0($a)
L139 (68):  EXT_STMT
L140 (68):  T77 = POST_DEC_OBJ CV1($obj) string("a")
L141 (68):  FREE T77
L142 (69):  EXT_STMT
L143 (69):  T78 = FETCH_OBJ_R CV1($obj) string("a")
L144 (69):  T79 = CONCAT T78 string("
")
L145 (69):  ECHO T79
L146 (71):  EXT_STMT
L147 (71):  T80 = FETCH_R (global) string("_GET")
L148 (71):  T81 = FETCH_DIM_R T80 string("p1")
L149 (71):  ASSIGN CV0($a) T81
L150 (73):  EXT_STMT
L151 (73):  V83 = NEW 0 string("myclass")
L152 (73):  DO_FCALL
L153 (73):  ASSIGN CV1($obj) V83
L154 (74):  EXT_STMT
L155 (74):  ASSIGN_OBJ CV1($obj) string("a")
L156 (74):  OP_DATA CV0($a)
L157 (75):  EXT_STMT
L158 (75):  T87 = POST_INC_OBJ CV1($obj) string("a")
L159 (75):  FREE T87
L160 (76):  EXT_STMT
L161 (76):  T88 = FETCH_OBJ_R CV1($obj) string("a")
L162 (76):  T89 = CONCAT T88 string("
")
L163 (76):  ECHO T89
L164 (77):  RETURN int(1)
LIVE RANGES:
        53: L100 - L101 (new)
        63: L117 - L118 (new)
        73: L134 - L135 (new)
        83: L152 - L153 (new)
```

- DISCOVERY:

```bash
cpg.call(".*PRE_INC.*|.*POST_INC.*|.*PRE_DEC.*|.*POST_DEC.*").location.l
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

