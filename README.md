
## OpenCannabis for Python

**Latest Release**: `0.0.1-alpha8`

This codebase provides the canonical Python module for leveraging [OpenCannabis](https://github.com/OpenCannabis)-formatted data. Using objects in this module, one can seamlessly decode or encode OCS-compliant data in text, binary, and JSON formats.

### Installation

To install this package, simply:
```text
pip install opencannabis
```

### Tooling

Invoking `make help` reveals local commands intended for development:
```text
ocpy / 0.0.1-alpha8:

all                            Build and test the SDK.
build                          Build the Python SDK for OpenCannabis.
clean                          Remove built artifacts (safe to run with codebase changes).
coverage                       Generate a unified coverage report. Typically run in CI and requires grcov.
help                           Show this help text.
prompt                         Run an interactive prompt with the build SDK.
publish                        Publish release artifacts (assuming requisite permissions).
release                        Build release artifacts for the library, and re-render codebase docs.
render-tpl                     Render templates for help materials, such as the main README.
report-coverage                Report coverage results to Codecov.
test                           Run unit tests for the SDK.
```

Made with love in California.

Copyright (&copy;) 2020, the OpenCannabis Authors and Editors. All rights reserved. See embedded licensing files for
more information.
