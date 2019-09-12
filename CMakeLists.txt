CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

include(RezBuild)
include(RezRepository)
include(ExternalProject)

set(ktoa_version 2.4.0.1)

# 3Delight
rez_set_archive(
    ktoa_url ktoa/KtoA-${ktoa_version}-kat3.1-linux.tgz
    https://www.arnoldrenderer.com/arnold/download/product-download/?id=2940
)

# The environment variable REZ_TMP_PATH is meant to point to a location such as "/tmp/rez".
set(EXTRACT_DIR $ENV{REZ_TMP_PATH}/ktoa/${ktoa_version})
set(BUILD_DIR ${EXTRACT_DIR}/build)

# We configure/build/install KtoA through the ExternalProject_Add macro,
# using three different shell scripts for each of these steps.
# If necessary, it is possible to skip one of these steps by replacing the command
# by "", an empty string.
ExternalProject_Add(
    build_ktoa
    URL ${ktoa_url}
    PREFIX ktoa
    SOURCE_DIR ${EXTRACT_DIR}
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND bash ${CMAKE_SOURCE_DIR}/install.sh ${EXTRACT_DIR} ${CMAKE_INSTALL_PREFIX} ${ktoa_version}
)

# We use a bogus CMake "install" step in order to be able to properly finish
# and get out of the CMake script.
install(
    CODE
    "execute_process(
        COMMAND echo \"\n[CMAKE] Katana-${ktoa_version} PACKAGE SETUP FINISHED!\n\"
    )"
)
