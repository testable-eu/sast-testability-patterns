## Prerequisites
- [Testability patterns overview](./Testability-Patterns.md)
- [Testability patterns structure/schema](./Testability-patterns-structure.md)

## Steps
A pattern can be added to a SAST catalog either manually or via the tp-framework (see [here](https://github.com/testable-eu/sast-tp-framework)). In both the cases the pattern needs first to be created based on the format specified in [testability patterns structure](./testability-patterns-structure.md):

```
00_pattern_name
|-- 00_pattern_name.json
|-- README.md
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

You can find a starter template of a simple testability pattern [here](https://github.com/testable-eu/sast-testability-patterns/tree/master/pattern_template).


**Note**: the pattern folder shall be _self-contained_ as files and folders outside it will be neglected by the [tp-framework](https://github.com/testable-eu/sast-tp-framework). For example, dependencies should not point outside the pattern folder.

