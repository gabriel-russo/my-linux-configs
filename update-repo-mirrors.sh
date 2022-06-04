#!/bin/bash
#
# update-repo-mirrors.sh - Update all /usr/share/xbps.d/ mirrors's URL
#
# Site : www.github.com/gabriel-russo
# Autor: Gabriel Russo <gabrielrusso@pm.me>
#
# -------------------------------------------------------------
#
# This program receive a <URL> by parameter and update all available files
# in /usr/share/xbps.d with repository=<URL>/current/{nonfree, multilib} ...
#
# Examples:
# $ ./update-repo-mirrors.sh https://repo-us.voidlinux.org  
#
# --------------------------------------------------------------
#
# License: Unlicense

echo "Starting script..."

URL="${1%%\/}" # Get rid of last slash

scaped_url=$(echo ${URL} | sed 's/\//\\\//g')

echo
read -p "Modifying all URLs with: ${1} , Continue? [y/n]: " continue

# ${continue,,} Only works with bash >= 4.0
if [ "${continue,,}" = 'n' ]; then
	exit 1
fi

XBPS_D=/usr/share/xbps.d

echo
echo "Entering directory xbps.d -> ${XBPS_D}"
echo

mirror_conf_files=("00-repository-main.conf" "10-repository-nonfree.conf" "10-repository-multilib.conf" "10-repository-multilib-nonfree.conf" )

for conf_file in "${mirror_conf_files[@]}"; 
do
	if [ -e $XBPS_D/$conf_file ]; then
		echo "=============//=============="
		echo "Modifying file: ${conf_file}"
		sudo sed -i -r "s/[^=]*[[:alnum:]\-\.]\.(org|com)/$scaped_url/g" $XBPS_D/$conf_file
		echo
		echo "File modified! Checking with cat command: $(cat $XBPS_D/$conf_file)"
		echo "=============//=============="
		echo
	fi
done
