#!/bin/bash
#
# thunar_extras_install.sh - This program is a script for downloading packages used in custom actions (uca.xml)
#
# Site : www.github.com/gabriel-russo
# Author: Gabriel Russo <gabrielrusso@protonmail.com>
#
# --------------------------------------------------------------
#
# Changelog:
#
# v1.0 22/06/2022, Gabriel Russo:
#     - Added yad and file-roller
#
# License: Unlicense
#

echo "sudo password required for list packages using xbps-query"
echo
PACKAGES_LIST=$(sudo xbps-query -m)

function check_if_installed() {
  if $(echo "${PACKAGES_LIST}" | grep -q "${1}"); then
    echo "${1} - OK"
  else
    echo "Installing ${1}..."
    echo
    sudo xbps-install "${1}"
  fi
}

EXTRAS_PACKAGES=("yad" "file-roller")

for packages in "${EXTRAS_PACKAGES[@]}"; do
  check_if_installed ${packages}
done
