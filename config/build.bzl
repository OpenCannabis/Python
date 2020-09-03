
load(
    "@gust//defs:tools.bzl",
    "dependencies",
    "http_archive",
    "git_repository",
)

load(
    "@gust//defs/toolchain:deps.bzl",
    "maven",
)


DEPS = {
    # OpenCannabis Protocol Sources
    "opencannabis": {
        "type": "github",
        "repo": "OpenCannabis/Protocol",
        "target": "1dcb41b4ff641407fb53b9ff22786a5ebe4e6095",
        "seal": "155596467e61f53ef881dd9f661ec47422989d5fefc39e32c5ccf16e34a6e211"},

    # OpenCannabis: Python Sources
    "protocol": {
        "type": "archive",
        "format": "tar",
        "overlay": "ocpy.bzl",
        "targets": ["https://raw.githubusercontent.com/OpenCannabis/Protocol/master/releases/python-1.9.0-alpha1.tar.gz"],
        "seal": "b5f797ac02cd2d350f7638e96db61f351f557f5be0f95545a0495335ff736830"},
}


def _install_dependencies(local):

    """ Install all dependencies into the current WORKSPACE. """

    dependencies(DEPS, local)


install_dependencies = _install_dependencies
