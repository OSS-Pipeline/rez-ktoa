#!/usr/bin/bash

# Will exit the Bash script the moment any command will itself exit with a non-zero status, thus an error.
set -e

EXTRACT_PATH=$1
INSTALL_PATH=${REZ_BUILD_INSTALL_PATH}
KTOA_VERSION=${REZ_BUILD_PROJECT_VERSION}

# We print the arguments passed to the Bash script.
echo -e "\n"
echo -e "==============="
echo -e "=== INSTALL ==="
echo -e "==============="
echo -e "\n"

echo -e "[INSTALL][ARGS] EXTRACT PATH: ${EXTRACT_PATH}"
echo -e "[INSTALL][ARGS] INSTALL PATH: ${INSTALL_PATH}"
echo -e "[INSTALL][ARGS] KTOA VERSION: ${KTOA_VERSION}"

cd ${EXTRACT_PATH}

# We install KtoA.
echo -e "\n"
echo -e "[INSTALL] Installing KtoA-${KTOA_VERSION}..."

cp -R ${EXTRACT_PATH}/* ${INSTALL_PATH}

echo -e "\n"
echo -e "[INSTALL] Finished installing KtoA-${KTOA_VERSION}!"
echo -e "\n"
