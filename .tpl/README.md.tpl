
## OpenCannabis for Python
[![Build status](https://badge.buildkite.com/7cd07a27722c5e8b59862ee570c3caf2d4a6dfbdec7a982b7e.svg)](https://buildkite.com/opencannabis/python) ![Code Climate maintainability](https://img.shields.io/codeclimate/maintainability/OpenCannabis/Python?label=quality) ![Codecov](https://img.shields.io/codecov/c/github/OpenCannabis/Python) ![PyPI](https://img.shields.io/pypi/v/opencannabis)

**Latest Release**: `{{VERSION}}`

This codebase provides the canonical Python module for leveraging [OpenCannabis](https://github.com/OpenCannabis)-formatted data. Using objects in this module, one can seamlessly decode or encode OCS-compliant data in text, binary, and JSON formats.

### Using the objects

Objects from the [OpenCannabis Specification](https://github.com/OpenCannabis/RFC) and
[Protocol Definitions](https://github.com/OpenCannabis/Protocol) can be imported in Python and used to express data in
OCS format. Protocol buffer objects are capable of producing (1) proto text format, (2) binary proto format, or (3)
JSON.

For example, here's some code that prepares a product key:
```python
from opencannabis.base.ProductKey_pb2 import ProductKey
from opencannabis.base.ProductKind_pb2 import ProductKind

key = ProductKey()
key.id = "abc123"
key.type = ProductKind.EDIBLES

str(key)

# returns a text-encoded proto:
"""
key: "abc123"
kind: EDIBLES

"""
```

### Installation

To install this package, simply:
```text
pip install opencannabis
```

### Tooling

Invoking `make help` reveals local commands intended for development:
```text