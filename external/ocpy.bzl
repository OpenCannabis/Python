
filegroup(
    name = "all-models",
    srcs = glob(["*.py", "**/*.py"]),
)


load(
    "@ocpy//config:rules.bzl",
    "oc_py_protocol",
)


oc_py_protocol(
    name = "Species",
    src = "structs/Species",
    model = "@opencannabis//structs:Species",
)
