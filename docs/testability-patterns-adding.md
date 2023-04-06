# Adding a New Testability Pattern

## Prerequisites

- [Testability patterns overview](./testability-Patterns.md)
- [Testability patterns structure/schema](./testability-patterns-structure.md)

## Steps

If you would like to propose a new testability pattern to be added to the GitHub repository, please:

1. Raise a GitHub issue following our [contribution guidelines](./contribution-guidelines.md) using the [`New Testability Pattern Proposal`](https://github.com/testable-eu/sast-testability-patterns/issues/new?assignees=&labels=ACK_WAITING%2C+NEW_TP&template=1--new-testability-pattern-proposal.md&title=New+TP+Proposal%3A+%5BPUT_TARGET_TP_NAME_HERE%5D) issue template.

2. Wait for the proposal to be approved by the maintainers.

3. Create the new testability pattern with the help of the guide below, and then submit a PR following the [contribution guidelines](./contribution-guidelines.md).

Thank you again for your contribution.

## Creating a New Testability Pattern

A pattern can be created for a SAST catalog either manually or via the tp-framework (see [here](https://github.com/testable-eu/sast-tp-framework)). In both the cases the pattern needs first to be created based on the format specified in [testability patterns structure](./testability-patterns-structure.md):

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

**Note**: the pattern folder shall be *self-contained* as files and folders outside it will be neglected by the [tp-framework](https://github.com/testable-eu/sast-tp-framework). For example, dependencies should not point outside the pattern folder.
