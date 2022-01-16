#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


Packages=(
"tree"
"git"
"mas"
"jq"
"nmap"
"openssl"
"ssh-copy-id"
"wget"
"gpg"
)

Apps=(
# Web Browser
"google-chrome"
"chrome-remote-desktop-host"

# Text editor
"obsidian"

# Message
"discord"
"telegram"
"mattermost"
"keybase"

# File Cloud drives
"megasync"
"dropbox"
"google-drive"

# Game
"steam"

# Developer
"visual-studio-code"
"unity-hub"
"docker"
)

AppleStore=(
"497799835"	#Xcode
"646295438"	#RAR Extractor - Unarchiver
"539883307"	#LINE
"662763204"	#Master Password
"414030210"	#LimeChat
)

for pak in "${Packages[@]}"; do
	brew install $pak
done

for app in "${Apps[@]}"; do
	brew install --cask $app
done

for app in "${AppleStore[@]}"; do
	mas install $app
done
