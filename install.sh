#!/usr/bin/bash

build_path=$1
install_path=$2
ktoa_version=$3

# We print the arguments passed to the Bash script
echo -e "\n"
echo -e "==============="
echo -e "=== INSTALL ==="
echo -e "==============="
echo -e "\n"

echo -e "[INSTALL][ARGS] BUILD PATH: ${build_path}"
echo -e "[INSTALL][ARGS] KTOA VERSION: ${ktoa_version}"

cd $build_path

# We finally install KtoA
echo -e "\n"
echo -e "[INSTALL] Installing KtoA-${ktoa_version}..."

cp -R ./* $install_path

echo -e "[INSTALL] Finished installing KtoA-${ktoa_version}!"
echo -e "\n"
