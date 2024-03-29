[//]: # (This file is automatically generated. If you wish to make any changes, please use the JSON files and regenerate this file using the tpframework.)

# Make Ref

Tags: sast, php, php_v7.4.9

Version: v1.0

## Description

Multiple variables can point to the same object in memory using references. When the value of one variable changes, it changes the value of all the other variables referencing that same value.

## Overview

| Instances                 | has discovery rule   | discovery method   | rule successfull   |
|---------------------------|----------------------|--------------------|--------------------|
| [1 Instance](#1-instance) | yes                  | joern              | yes                |
| [2 Instance](#2-instance) | yes                  | joern              | yes                |

<details markdown="1"open>
<summary>

## 1 Instance
</summary>

This instance shows, that the content of two different array elements can be connected using a reference. If one changes, the other one changes as well.

### Code

```PHP
<?php
$arr = array(1,2,3,4);
$arr[1] = &$arr[3]; // tarpit
$arr[3] = $_GET['p1']; // source
echo $arr[1]; // sink
```

### Instance Properties

| category   | feature_vs_internal_api   | input_sanitizer   | negative_test_case   | source_and_sink   |
|------------|---------------------------|-------------------|----------------------|-------------------|
| S0         | FEATURE                   | no                | yes                  | no                |

<details markdown="1">
<summary>
<b>More</b></summary>

<details markdown="1">
<summary>

### Compile
</summary>

```bash
$_main:
     ; (lines=12, args=0, vars=1, tmps=9)
     ; (before optimizer)
     ; /.../PHP/12_make_ref/1_instance_12_make_ref/1_instance_12_make_ref.php:1-5
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($arr) array(...)
0001 V3 = FETCH_DIM_W CV0($arr) int(3)
0002 V4 = MAKE_REF V3
0003 V2 = FETCH_DIM_W CV0($arr) int(1)
0004 ASSIGN_REF V2 V4
0005 T7 = FETCH_R (global) string("_GET")
0006 T8 = FETCH_DIM_R T7 string("p1")
0007 ASSIGN_DIM CV0($arr) int(3)
0008 OP_DATA T8
0009 T9 = FETCH_DIM_R CV0($arr) int(1)
0010 ECHO T9
0011 RETURN int(1)
LIVE RANGES:
     4: 0003 - 0004 (tmp/var)
```

</details>

<details markdown="1">
<summary>

### Discovery
</summary>

The rule searches for occurences of `MAKE_REF` and should therefor be perfect.

```scala
val x12 = (name, "12_make_ref_iall_i1", cpg.call(".*MAKE_REF.*").location.toJson);
```

| discovery method   | expected accuracy   |
|--------------------|---------------------|
| joern              | Perfect             |

</details>

<details markdown="1"open>
<summary>

### Measurement
</summary>

| Tool        | Comm_1   | Comm_2   | Progpilot   | Ground Truth   |
|-------------|----------|----------|-------------|----------------|
| 08 Jun 2021 |          | yes      | no          | no             |
| 17 May 2023 | no       | no       |             | no             |

</details>

</details>

</details>

<details markdown="1">
<summary>

## 2 Instance
</summary>

This instance does not have a vulnerability. It shows, that only the two referenced values are actually connected. If you output a different value, this is user controlled value.

### Code

```PHP
<?php
$arr = array(1,2,3,4);
$arr[3] = $_GET['p1']; // source
$arr[1] = &$arr[3]; // tarpit
echo $arr[0]; // sink
```

### Instance Properties

| category   | feature_vs_internal_api   | input_sanitizer   | negative_test_case   | source_and_sink   |
|------------|---------------------------|-------------------|----------------------|-------------------|
| S0         | FEATURE                   | no                | yes                  | no                |

<details markdown="1">
<summary>
<b>More</b></summary>

<details markdown="1">
<summary>

### Compile
</summary>

```bash
$_main:
     ; (lines=12, args=0, vars=1, tmps=9)
     ; (before optimizer)
     ; /.../PHP/12_make_ref/2_instance_12_make_ref/2_instance_12_make_ref.php:1-5
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($arr) array(...)
0001 T3 = FETCH_R (global) string("_GET")
0002 T4 = FETCH_DIM_R T3 string("p1")
0003 ASSIGN_DIM CV0($arr) int(3)
0004 OP_DATA T4
0005 V6 = FETCH_DIM_W CV0($arr) int(3)
0006 V7 = MAKE_REF V6
0007 V5 = FETCH_DIM_W CV0($arr) int(1)
0008 ASSIGN_REF V5 V7
0009 T9 = FETCH_DIM_R CV0($arr) int(0)
0010 ECHO T9
0011 RETURN int(1)
LIVE RANGES:
     7: 0007 - 0008 (tmp/var)
```

</details>

<details markdown="1">
<summary>

### Discovery
</summary>

The rule searches for occurences of `MAKE_REF` and should therefor be perfect.

```scala
val x12 = (name, "12_make_ref_iall_i1", cpg.call(".*MAKE_REF.*").location.toJson);
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
| 08 Jun 2021 | no       | yes      | no        | yes         | no     | no    | no             |
| 17 May 2023 | no       | no       |           |             |        |       | no             |

</details>

</details>

</details>
