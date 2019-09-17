name = "ktoa"

version = "2.4.0.1"

authors = [
    "Autodesk"
]

description = \
    """
    Arnold for Katana (or KtoA) provides a bridge to the Arnold renderer from within the standard Katana interface.
    """

requires = [
    "cmake-3+"
]

variants = [
    ["platform-linux"]
]

build_system = "cmake"

with scope("config") as config:
    config.build_thread_count = "logical_cores"

#TODO: Use the SHA1 of the archive instead.
uuid = "ktoa-2.4.0.1"

def commands():
    env.PATH.prepend("{root}/bin")
    env.KATANA_RESOURCES.append("{root}")
