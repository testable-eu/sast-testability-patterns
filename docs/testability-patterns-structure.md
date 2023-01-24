## Prerequisites
- [Testability patterns](./Testability-Patterns.md)

## TP Structure: File System and JSON

The pattern folder structure is:

```
00_pattern_name
|-- 00_pattern_name.json
|-- README.md
|-- pattern_instances_documentation.md (optional)
|-- 1_instance_00_pattern_name
|   |-- 1_instance_00_pattern_name.json
|   |-- pattern_src_code // (file or dir)
|   |-- pattern_discovery_rule.sc // scala query
|   |-- lib/dep folders // (optional)
|   |-- other_files // (optional)
|
|-- 2_instance_00_pattern_name
|-- 3_instance_00_pattern_name
|-- ...
```

Each pattern is contained inside a folder `ID_pattern_name` (`ID` is the pattern id). A pattern has one or more instances, stored as a subfolder each, with the name format `IID_instance_ID_pattern_name` (`IID` is the pattern instance id). 

Each pattern has a `json` metadata file that specifies the pattern name, description, family, tags, and its instances. Similarly, pattern instances have a `json` file specifying different metadata information.

### The pattern `json` metadata

Structure: 
```json
{
    "name": "string",
    "description": "string | path/to/file",
    "family": "string",
    "tags": ["list", "of", "strings"],
    "instances": [
        "paths/to/instance1.json",
        "paths/to/instance2.json",
        "paths/to/instance3.json"
    ]
}
```

Description:

- **name**: pattern name
- **description**: pattern description or path to an `md` file (e.g., README.md)
- **family**: catalogue family, e.g., `code_pattern_php`, `code_pattern_js`, `code_pattern_java`, etc
- **tags**: some labels, e.g., `["sast", "php", "php_v7.4.9"]` or `["sast", "js", "client-side"]`
- **instances**: list of pattern instances


### The instance `json` metadata:

Structure: 
```json
{
    "description": "string | path/to/file",
    "code": {
        "path": "path/to/src_code",
        "injection_skeleton_broken": "boolean"
    },
    "expectation": {
        "type": "string",
        "sink_file": "path/to/file",
        "sink_line": "number",
        "source_file": "path/to/file",
        "source_line": "number",
        "expectation": "boolean"
    },
    "discovery": {
        "rule": "path/to/discovery_rule",
        "method": "joern | python | ...",
        "rule_accuracy": "FP | FN | FPFN | Perfect",
        "notes": "string | path/to/file"
    },
    "remediation": {
        "transformation": "TBD",
        "modeling_rule": "TBD",
        "notes": "string | path/to/file"
    },
    "compile": {
        "dependencies": "path/to/dependencies",
        "binary": "path/to/binary",
        "instruction": "string"
    },
    "properties": {
        "category": "S0 | D1 | D2 | D3 | D4",
        "feature_vs_internal_api": "FEATURE | INTERNAL_API",
        "input_sanitizer": "boolean",
        "source_and_sink": "boolean",
        "negative_test_case": "boolean"
    }
}
```

Description:

- **description**: pattern instance description or path to an `md` file (e.g., README.md)
- **code->path**: path to the pattern instance source code
- **code->injection_skeleton_broken**: does the instance follow the general pattern of `source -> testability pattern -> sink` or not? Specify `injection_skeleton_broken=true` if it does not follow the common format. 
- **expectation->type**: vulnerability type (e.g., `xss`)
- **expectation->sink_file**: sink file path name
- **expectation->sink_line**: sink line number
- **expectation->source_file**: source file path name
- **expectation->source_line**: source line of code
- **expectation->expectation**: boolean value showing if the vulnerability exists or not (i.e., negative test case)
- **properties->category**: how dynamic this instance is?
    -  `S0`: not dynamic at all
    - `D1`:  dynamic functions are used but with constant values as params that make the dynamicity solvable at static time (e.g., `call_user_func("foo",$x)`)
    - `D2`: dynamic functions are used with some variables that can be however resolved at static time by simple constant propagation (e.g., `$f="foo"; call_user_func($f,$x);`)
    - `D3`:  dynamic functions are used with some operators and variables that can be however partially resolved at static time by simple constant propagation (e.g., `$f="foo";call_user_func($f."_whatever",$x)`)
- **properties->feature_vs_internal_api**: is this capturing an internal API or not?
- **properties->input_sanitizer**:  is the instance capturing an input sanitizer that may be not supported by SAST tools?
- **properties->source_and_sink**: is the instance capturing an source/sink that may be not supported by SAST tools?
- **properties->negative_test_case**: whether this is a negative example. This is always the `not` of `expectation->expectation` value. This is to test how big the over-approximation of a SAST tool could be w.r.t. this instance.

- **discovery->rule**: path to the discovery rule or query
- **discovery->method**: the tool used to run the discovery rule or query
- **discovery->rule_accuracy** what is the estimated accuracy of the discovery rule? Options are: (i) `FP`= false positives, (ii) `FN`= false negatives, (iii) `FPFN` = false positives and negatives, and (iv) `Perfect`.
- **remediation->transformation** TBD
- **remediation->modeling_rule**: TBD
- **remediation->notes**: transformation nodes. This is optional for the time being, but if you see an easy way to remediate this pattern instance, add a note
- **compile->dependencies**: If the target programming language is compilable, then the "compile" property should be properly filled and "dependencies" should be provided (if any).
- **compile->binary**: path to the binary file. 
- **compile->instruction**: If some specific instruction is required, this can be specified here. Note that the [sast-tp-framework](https://github.com/testable-eu/sast-tp-framework) uses only standard compilation instructions by default.

### Pattern Template

You can find an example template of a testability pattern [here](https://github.com/testable-eu/sast-testability-patterns/tree/master/pattern_template).




