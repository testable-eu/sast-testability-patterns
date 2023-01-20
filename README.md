# Testability Pattern Catalogs for SAST

![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)

This repository includes catalogs of SAST testability patterns for the [OWASP Testability Patterns](https://owasp.org/www-project-testability-patterns-for-web-applications/) project. Testability Patterns (TPs) are problematic code instructions that affect the capability of code analysis tools for security testing. Due to TPs, SAST tools may not detect an existing vulnerability, or conversely, report a false alarm. 

This project has a OWASP website available at: [https://owasp.org/www-project-testability-patterns-for-web-applications/](https://owasp.org/www-project-testability-patterns-for-web-applications/).

## Quick Start

- [What is a testability pattern?](./docs/testability-patterns.md)
- [Testability patterns structure](./docs/testability-patterns-structure.md)
- [Adding a pattern](./docs/testability-patterns-adding)
- [Contribution guidelines](./docs/contribution-guidelines.md)
- [Pattern discovery](https://github.com/testable-eu/sast-tp-framework)

## Overview 

| Language   	| # Patterns 	| # Instances 	| Link                                                                               	|
|------------	|------------	|-------------	|------------------------------------------------------------------------------------	|
| JavaScript 	| 104        	| 157         	| [JS](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS)  	|
| PhP        	| 84         	| 144         	| [PHP](https://github.com/testable-eu/sast-testability-patterns/tree/master/PHP) 	|
| Java       	| 143        	| 220         	| [JAVA](https://github.com/testable-eu/sast-testability-patterns/tree/master/JAVA)  	|



## Contribution and Issues

We are delighted to know that you would like to contribute to this repository. Please follow our [contribution guideline](./docs/contribution-guidelines.md) before you submit a PR.

For any questions, suggestions, feedback or concerns. please [raise an issue in the repository](https://github.com/testable-eu/sast-testability-patterns/issues). We welcome suggestions and feedback from the community. 


## Publication

```bibtex
@article{altestability,
  title={Testability Tarpits: the Impact of Code Patterns on the Security Testing of Web Applications},
  author={Al Kassar, Feras and Clerici, Giulia and Compagna, Luca and Yamaguchi, Fabian and Balzarotti, Davide},
  booktitle = {NDSS},
  year = {2022},
}
```

## License

This project is licensed under `GNU AFFERO GENERAL PUBLIC LICENSE V3.0`. See [LICENSE](LICENSE) for more information.

