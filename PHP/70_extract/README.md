[//]: # (This file is automatically generated. If you wish to make any changes, please use the JSON files and regenerate this file using the tpframework.)

# Extract

Tags: sast, php, php_v7.4.9

Version: v1.0

## Description

In PHP [`extract`](https://www.php.net/manual/en/function.extract.php) can be used, to turn key-values pairs from an array into variables in the current scope.

## Overview

| Instances                 | has discovery rule   | discovery method   | rule successfull   |
|---------------------------|----------------------|--------------------|--------------------|
| [1 Instance](#1-instance) | yes                  | joern              | yes                |

## 1 Instance

The instance extracts variables from an array.

### Code

```PHP
<?php
$b = $_GET["p1"]; // source
$arr = array("A"=>$b,"B"=>"BBB");
extract($arr);
echo $A; // sink
```

### Instance Properties

| category   | feature_vs_internal_api   | input_sanitizer   | negative_test_case   | source_and_sink   |
|------------|---------------------------|-------------------|----------------------|-------------------|
| D2         | INTERNAL_API              | no                | no                   | no                |

<details markdown="1">
<summary>
<b>More</b></summary>

<details markdown="1">
<summary>

### Compile
</summary>

```bash
$_main:
     ; (lines=11, args=0, vars=3, tmps=6)
     ; (before optimizer)
     ; /.../PHP/70_extract/1_instance_70_extract/1_instance_70_extract.php:1-5
     ; return  [] RANGE[0..0]
0000 T3 = FETCH_R (global) string("_GET")
0001 T4 = FETCH_DIM_R T3 string("p1")
0002 ASSIGN CV0($b) T4
0003 T6 = INIT_ARRAY 2 CV0($b) string("A")
0004 T6 = ADD_ARRAY_ELEMENT string("BBB") string("B")
0005 ASSIGN CV1($arr) T6
0006 INIT_FCALL 1 96 string("extract")
0007 SEND_REF CV1($arr) 1
0008 DO_ICALL
0009 ECHO CV2($A)
0010 RETURN int(1)
LIVE RANGES:
     6: 0004 - 0005 (tmp/var)
```

</details>

<details markdown="1">
<summary>

### Discovery
</summary>

The rule searches for function calls to `extract` on opcode level.

```scala
val x70 = (name, "70__extract_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("extract").astParent.location.toJson);
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
| 08 Jun 2021 | no       | no       | no        | no          | no     | no    | yes            |
| 22 May 2023 | no       | no       |           |             |        |       | yes            |

</details>

</details>
