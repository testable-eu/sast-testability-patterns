# Catalogs of SAST Testability Patterns

Testability Patterns for SAST are organized in catalogs, one catalog for each targeted programming language.

These catalogs need to follow a precise file system structure so to be properly operated by the Testability Pattern Framework:

- each catalog is captured as a subfolder of the `.\testability_patterns` folder, e.g., `.\testability_patterns\PHP`
- each pattern in a catalog is captured as a sub-folder of the catalog folder, e.g., `.\testability_patterns\PHP\1_static_variables`
- each pattern is required to follow the guidelines described [here](./testability-patterns-structure.md)

We recommend adding patterns to a catalog via the `add` operation of the [framework](https://github.com/testable-eu/sast-tp-framework). This will fill-in automatically some necessary metadata and will ensure your pattern is well-written and properly added. However, patterns can also be added manually by adding a new pattern folder to the catalog and by manually providing all the necessary metadata and artifact for that pattern.
