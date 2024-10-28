#!/bin/bash

# Download git-prompt.sh into /opt/git-completion

if [ -e /opt/git-completion/git-prompt.sh ]; then

	echo "git-prompt.sh already exists!"

	exit 1

fi

mkdir -pv /opt/git-completion

wget https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-prompt.sh -O /opt/git-completion/git-prompt.sh

chmod o+x /opt/git-completion/git-prompt.sh

echo "git-prompt.sh installed successfully! check /opt/git-completion folder"

