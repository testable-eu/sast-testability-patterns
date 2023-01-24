# Testability Pattern Catalogs for SAST

![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)

This repository includes catalogs of SAST testability patterns for the [OWASP Testability Patterns](https://owasp.org/www-project-testability-patterns-for-web-applications/) project. Testability Patterns (TPs) are problematic code instructions that affect the capability of code analysis tools for security testing. Due to TPs, SAST tools may not detect an existing vulnerability, or conversely, report a false alarm. 

This project has a OWASP website available at: [https://owasp.org/www-project-testability-patterns-for-web-applications/](https://owasp.org/www-project-testability-patterns-for-web-applications/).

## Quick Start

- [What is a testability pattern?](./docs/testability-patterns.md)
- [Testability patterns structure](./docs/testability-patterns-structure.md)
- [Example pattern template](https://github.com/testable-eu/sast-testability-patterns/tree/master/pattern_template)
- [Adding a pattern](./docs/testability-patterns-adding.md)
- [Contribution guidelines](./docs/contribution-guidelines.md)
- [Pattern discovery](https://github.com/testable-eu/sast-tp-framework)

For more detailed documentation, see the [docs](https://github.com/testable-eu/sast-testability-patterns/tree/master/docs) folder.

## Overview 

| Language    | # Patterns  | # Instances   | Link                                                                                |
|------------ |------------ |-------------  |------------------------------------------------------------------------------------ |
| JavaScript  | 105         | 157           | [JS](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS)   |
| PhP         | 84          | 145           | [PHP](https://github.com/testable-eu/sast-testability-patterns/tree/master/PHP)   |
| Java        | 143         | 218           | [JAVA](https://github.com/testable-eu/sast-testability-patterns/tree/master/JAVA)   |


## Contributions

We are delighted to know that you would like to contribute to this repository. Please follow our [contribution guideline](./docs/contribution-guidelines.md) before you submit a PR.

For any questions, suggestions, feedback or concerns. please [raise an issue in the repository](https://github.com/testable-eu/sast-testability-patterns/issues). We welcome suggestions and feedback from the community. 


## News

Follow us on Twitter on [@Testable_EU](https://twitter.com/Testable_EU) or check out TESTABLE website available at [https://testable.eu/](https://testable.eu/).

## Publications

```bibtex
@article{altestability,
  title={Testability Tarpits: the Impact of Code Patterns on the Security Testing of Web Applications},
  author={Al Kassar, Feras and Clerici, Giulia and Compagna, Luca and Yamaguchi, Fabian and Balzarotti, Davide},
  booktitle = {NDSS},
  year = {2022},
}
```

To see the complete list of relevant publications, please visit [https://testable.eu/publications/](https://testable.eu/publications/).

## License

This project is licensed under `GNU AFFERO GENERAL PUBLIC LICENSE V3.0`. See [LICENSE](LICENSE) for more information.

## Acknowledgements

This project received funding from the European Union's Horizon 2020 research and innovation programme under grant agreement No. 101019206.

<p align="center">
  <img src="https://testable.eu/img/eu_flag.png"><br>
  Funded by the European Union
</p>

