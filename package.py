name = "ktoa"

version = "2.4.0.2"

authors = [
    "Solid Angle",
    "Autodesk"
]

description = \
    """
    Arnold for Katana (or KtoA) provides a bridge to the Arnold renderer from within the standard Katana interface.
    """

requires = [
    "cmake-3+",
    "katana-3.2+"
]

variants = [
    ["platform-linux"]
]

build_system = "cmake"

with scope("config") as config:
    config.build_thread_count = "logical_cores"

uuid = "ktoa-{version}".format(version=str(version))

def commands():
    env.PATH.prepend("{root}/bin")
    env.KATANA_RESOURCES.append("{root}")

    # Helper environment variables.
    env.KTOA_BINARY_PATH.set("{root}/bin")
    env.KTOA_LIBRARY_PATH.set("{root}/bin:{root}/Libs")
