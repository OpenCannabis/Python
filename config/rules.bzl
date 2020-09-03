
#
# Aliased rules for using protocol buffer definitions in Python.
#

load(
    "@com_github_grpc_grpc//bazel:python_rules.bzl",
    _python_grpc_library = "py_grpc_library",
    _python_proto_library = "py_proto_library",
)

load(
    "@rules_python//python:defs.bzl",
    _py_library = "py_library",
    _py_binary = "py_binary",
)

load(
    "@pypi_packaging//:pypi_package.bzl",
    _pypi_package = "pypi_package",
)


def _ocp_model(name, src):
    """ Generate a Python library target for the provided pre-compiled Python model. """

    _py_library(
        name = name,
        srcs = [src],
    )


def _ocp_py(name, target):
    """ Generate a Python library target for the provided OpenCannabis protocol definition. """

    _python_proto_library(
        name = _ocp_lib(name),
        deps = [target],
    )


def _oc_py_protocol(name, model, src):
    """ Generate a Python implementation for the provided OCP model. """

    _ocp_py(
        name = name,
        target = model,
    )

    _ocp_model(
        name = name,
        src = src,
    )


def _ocp_lib(name):
    """ Generate a Python library target name. """

    return "%s-lib" % name


def _package(name, **kwargs):
    """ Generate a PyPI package artifact. """

    _pypi_package(
        name = name,
        **kwargs
    )


ocp_py = _ocp_py
ocp_lib = _ocp_lib
package = _package
oc_py_protocol = _oc_py_protocol
