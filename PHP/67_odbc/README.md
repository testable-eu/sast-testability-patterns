[//]: # (This file is automatically generated. If you wish to make any changes, please use the JSON files and regenerate this file using the tpframework.)

# Odbc

Tags: sast, php, php_v7.4.9

Version: v1.0

## Description

In PHP [`odbc_execute`](https://www.php.net/manual/en/function.odbc-execute.php) executes a statement on a database.

## Overview

| Instances                 | has discovery rule   | discovery method   | rule successfull   |
|---------------------------|----------------------|--------------------|--------------------|
| [1 Instance](#1-instance) | yes                  | joern              | yes                |

## 1 Instance

This pattern focuses on the function call `odbc_exec`.

### Code

```PHP
<?php
$val = $_GET["p1"]; // source
$conn = odbc_connect('dsn','username','password');
$test = odbc_exec($conn, "SELECT $val FROM sites"); // sink
```

### Instance Properties

| category   | feature_vs_internal_api   | input_sanitizer   | negative_test_case   | source_and_sink   |
|------------|---------------------------|-------------------|----------------------|-------------------|
| S0         | INTERNAL_API              | no                | no                   | yes               |

<details markdown="1">
<summary>
<b>More</b></summary>

<details markdown="1">
<summary>

### Compile
</summary>

```bash
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
```

</details>

<details markdown="1">
<summary>

### Discovery
</summary>

The rule searches for function calls to `odbc_exec` on opcode level.

```scala
val x67 = (name, "67_odbc_iall", cpg.call(".*INIT_FCALL.*").argument.order(1).code("odbc_exec").astParent.location.toJson);
```

| discovery method   | expected accuracy   |
|--------------------|---------------------|
| joern              | Perfect             |

</details>

<details markdown="1"open>
<summary>

### Measurement
</summary>

| Tool        | Comm_1   | Comm_2   | phpSAFE   | Progpilot   | RIPS   | WAP   | Ground Truth   |
|-------------|----------|----------|-----------|-------------|--------|-------|----------------|
| 08 Jun 2021 | yes      | yes      | yes       | yes         | yes    | no    | yes            |
| 22 May 2023 | yes      | no       |           |             |        |       | yes            |

</details>

</details>
