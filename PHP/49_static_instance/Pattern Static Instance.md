# Pattern: Static Instance

## Category

Objects

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
class Myclass
{
    private static $instance ;
    public $x;

    public static function oneInstance()
    {
        if(!self::$instance instanceof self) {
            self::$instance = new self ;
        }
        return self::$instance ;
    }
}

Myclass::oneInstance()->x = $_GET["p1"];
echo Myclass::oneInstance()->x;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   |   NO      | NO      |   NO      | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=16, args=0, vars=0, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/126_static_instance/126_static_instance.php:1-17
L0 (4):     NOP
L1 (5):     NOP
L2 (16):    EXT_STMT
L3 (16):    INIT_STATIC_METHOD_CALL 0 string("Myclass") string("oneInstance")
L4 (16):    V0 = DO_FCALL
L5 (16):    V0 = SEPARATE V0
L6 (16):    T2 = FETCH_R (global) string("_GET")
L7 (16):    T3 = FETCH_DIM_R T2 string("p1")
L8 (16):    ASSIGN_OBJ V0 string("x")
L9 (16):    OP_DATA T3
L10 (17):   EXT_STMT
L11 (17):   INIT_STATIC_METHOD_CALL 0 string("Myclass") string("oneInstance")
L12 (17):   V4 = DO_FCALL
L13 (17):   T5 = FETCH_OBJ_R V4 string("x")
L14 (17):   ECHO T5
L15 (17):   RETURN int(1)
LIVE RANGES:
        0: L6 - L8 (tmp/var)

Myclass::oneInstance: ; (lines=16, args=0, vars=0, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/126_static_instance/126_static_instance.php:7-13
L0 (7):     EXT_NOP
L1 (9):     EXT_STMT
L2 (9):     T0 = FETCH_STATIC_PROP_R string("instance") (self) (exception)
L3 (9):     T1 = INSTANCEOF T0 (self) (no-autolod) (exception)
L4 (9):     T2 = BOOL_NOT T1
L5 (9):     JMPZ T2 L11
L6 (10):    EXT_STMT
L7 (10):    V4 = NEW 0 (self) (exception)
L8 (10):    DO_FCALL
L9 (10):    ASSIGN_STATIC_PROP string("instance")
L10 (10):   OP_DATA V4
L11 (12):   EXT_STMT
L12 (12):   T6 = FETCH_STATIC_PROP_R string("instance") (self) (exception)
L13 (12):   RETURN T6
L14 (13):   EXT_STMT
L15 (13):   RETURN null
LIVE RANGES:
        4: L8 - L9 (new)
```

- DISCOVERY:

```bash
cpg.method.filter{ m =>

val fieldsHoldingConstruct = m.call.name(".*__construct.*").cfgNext.isLiteral.where(_.inCall.name("ASSIGN_STATIC_PROP_1")).code.l

val returnedVars = m.call.name("FETCH_STATIC_PROP_R").inCall.name("=").filter{ assign =>
                                                val target = assign.argument.order(0).code.headOption
                                                target.isDefined && assign.cfgNext.cfgNext.isCall.codeExact(s"RETURN ${target.get}").location.l > 0
                                                }.flatMap{ assign =>  assign.argument.order(1).isCall.argument.order(0).isLiteral.code.headOption }.l  

                                    (returnedVars intersect fieldsHoldingConstruct).location.l > 0

                                    }.size
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

