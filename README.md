
## OpenCannabis for Python

**Latest Release**: `0.0.1-alpha7`

This codebase provides the canonical Python module for leveraging [OpenCannabis](https://github.com/OpenCannabis)-formatted data. Using objects in this module, one can seamlessly decode or encode OCS-compliant data in text, binary, and JSON formats.

### Installation

To install this package, simply:
```text
pip install opencannabis
```

### Tooling

Invoking `make help` reveals local commands intended for development:
```text
ocpy / 0.0.1-alpha7:

[36mall                           [0m Build and test the SDK.
[36mbuild                         [0m Build the Python SDK for OpenCannabis.
[36mclean                         [0m Remove built artifacts (safe to run with codebase changes).
[36mcoverage                      [0m Generate a unified coverage report. Typically run in CI and requires grcov.
[36mhelp                          [0m Show this help text.
[36mprompt                        [0m Run an interactive prompt with the build SDK.
[36mpublish                       [0m Publish release artifacts (assuming requisite permissions).
[36mrelease                       [0m Build release artifacts for the library, and re-render codebase docs.
[36mrender-tpl                    [0m Render templates for help materials, such as the main README.
[36mreport-coverage               [0m Report coverage results to Codecov.
[36mtest                          [0m Run unit tests for the SDK.
```

Made with love in California.

Copyright (&copy;) 2020, the OpenCannabis Authors and Editors. All rights reserved. See embedded licensing files for
more information.
