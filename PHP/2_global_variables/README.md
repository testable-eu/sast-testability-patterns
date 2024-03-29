[//]: # (This file is automatically generated. If you wish to make any changes, please use the JSON files and regenerate this file using the tpframework.)

# Global Variables

Tags: sast, php, php_v7.4.9

Version: v1.0

## Description

This pattern targets `global` variables. Global variables may be challenging for SAST tools: if an attacker controlled value ends-up in a global variable in a program scope, is a SAST tool able to properly propagate that information to other scopes?

## Overview

| Instances                 | has discovery rule   | discovery method   | rule successfull   |
|---------------------------|----------------------|--------------------|--------------------|
| [1 Instance](#1-instance) | yes                  | joern              | yes                |

## 1 Instance

This instance should capture the use of global variables in a function.

### Code

```PHP
<?php
$result="";
function F($word) {
    global $result; // tarpit
    // will change the value of $result
    $result = $word;
}
$words= $_GET["p1"]; // source
F($words);
// XSS vulnerability, will print $word
echo $result; // sink
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
     ; (lines=9, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /.../PHP/2_global_variables/1_instance_2_global_variables/1_instance_2_global_variables.php:1-11
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($result) string("")
0001 T3 = FETCH_R (global) string("_GET")
0002 T4 = FETCH_DIM_R T3 string("p1")
0003 ASSIGN CV1($words) T4
0004 INIT_FCALL 1 128 string("f")
0005 SEND_VAR CV1($words) 1
0006 DO_UCALL
0007 ECHO CV0($result)
0008 RETURN int(1)

F:
     ; (lines=4, args=1, vars=2, tmps=1)
     ; (before optimizer)
     ; /.../PHP/2_global_variables/1_instance_2_global_variables/1_instance_2_global_variables.php:3-7
     ; return  [] RANGE[0..0]
0000 CV0($word) = RECV 1
0001 BIND_GLOBAL CV1($result) string("result")
0002 ASSIGN CV1($result) CV0($word)
0003 RETURN null
```

</details>

<details markdown="1">
<summary>

### Discovery
</summary>

ideal rule should looking for `global` variables used in a function

```scala
val x2 = (name, "2_global_variables_iall", cpg.call(".*BIND_GLOBAL.*").location.toJson);
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
| 08 Jun 2021 | yes      | yes      | yes       | no          | no     | no    | yes            |
| 17 May 2023 | yes      | yes      |           |             |        |       | yes            |

</details>

</details>
