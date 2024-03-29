[//]: # (This file is automatically generated. If you wish to make any changes, please use the JSON files and regenerate this file using the tpframework.)

# Foreach With Array

Tags: sast, php, php_v7.4.9

Version: v1.0

## Description

The `foreach` construct in PHP offers an easy way to iterate over an array or iterable objects.

## Overview

| Instances                 | has discovery rule   | discovery method   | rule successfull   |
|---------------------------|----------------------|--------------------|--------------------|
| [1 Instance](#1-instance) | yes                  | joern              | yes                |
| [2 Instance](#2-instance) | yes                  | joern              | yes                |

<details markdown="1"open>
<summary>

## 1 Instance
</summary>

The instance shows an example of iterating over an array using a `foreach` loop and the `array_keys` function.

### Code

```PHP
<?php
$b = $_GET["p1"]; // source
$array = array(
    "foo" => "bar",
    "bar" => "foo",
    "too"   => $b,
    -100  => 100,
);

foreach(array_keys($array) as $key) {
    echo "$key => $array[$key]\n"; // sink
}
```

### Instance Properties

| category   | feature_vs_internal_api   | input_sanitizer   | negative_test_case   | source_and_sink   |
|------------|---------------------------|-------------------|----------------------|-------------------|
| S0         | INTERNAL_API              | no                | no                   | no                |

<details markdown="1">
<summary>
<b>More</b></summary>

<details markdown="1">
<summary>

### Compile
</summary>

```bash
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
```

</details>

<details markdown="1">
<summary>

### Discovery
</summary>

The rule searches for calls to the function `array_keys`. But it does not check if these calls were done from a `foreach` loop.

```scala
val x59 = (name, "59_foreach_with_array_i1", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_keys").astParent.location.toJson);
```

| discovery method   | expected accuracy   |
|--------------------|---------------------|
| joern              | FP                  |

</details>

<details markdown="1"open>
<summary>

### Measurement
</summary>

| Tool        | Comm_1   | Comm_2   | phpSAFE   | Progpilot   | RIPS   | WAP   | Ground Truth   |
|-------------|----------|----------|-----------|-------------|--------|-------|----------------|
| 08 Jun 2021 | no       | yes      | no        | no          | yes    | no    | yes            |
| 22 May 2023 | no       | yes      |           |             |        |       | yes            |

</details>

</details>

</details>

<details markdown="1">
<summary>

## 2 Instance
</summary>

The instance shows an example with an array and a `foreach` looping over the array.

### Code

```PHP
<?php
$b = $_GET["p1"]; // source
//$b = "input";
$array = array(
    "foo" => "bar",
    "bar" => "foo",
    "too"   => $b,
    -100  => 100,
);

foreach($array as $key => $value) {
    // XSS when we will print $key
    echo "$key => $value\n"; // sink
}
```

### Instance Properties

| category   | feature_vs_internal_api   | input_sanitizer   | negative_test_case   | source_and_sink   |
|------------|---------------------------|-------------------|----------------------|-------------------|
| S0         | FEATURE                   | no                | no                   | no                |

<details markdown="1">
<summary>
<b>More</b></summary>

<details markdown="1">
<summary>

### Compile
</summary>

```bash
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
```

</details>

<details markdown="1">
<summary>

### Discovery
</summary>

The rule searches for array related operations on opcode level.

```scala
val x59 = (name, "59_foreach_with_array_i2", cpg.call(".*FE_FETCH_R.*").location.toJson);
```

| discovery method   | expected accuracy   |
|--------------------|---------------------|
| joern              | FP                  |

</details>

<details markdown="1"open>
<summary>

### Measurement
</summary>

| Tool        | Comm_1   | Comm_2   | phpSAFE   | Progpilot   | RIPS   | WAP   | Ground Truth   |
|-------------|----------|----------|-----------|-------------|--------|-------|----------------|
| 08 Jun 2021 | yes      | yes      | no        | yes         | yes    | no    | yes            |
| 22 May 2023 | yes      | yes      |           |             |        |       | yes            |

</details>

</details>

</details>
