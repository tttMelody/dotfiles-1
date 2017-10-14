#!/usr/bin/env bash

# thanks fntlnz

set -xeuo pipefail

install_path=$HOME/.dotfiles

git=$(which git)
stow=$(which stow)

if [ ! -d "$install_path" ]; then
  $git clone https://github.com/gianarb/dotfiles $install_path
fi

pushd $install_path
$stow bash-git-prompt
$stow systemd
$stow irssi
$stow i3
$stow profile.d
$stow screenlayout
$stow vim
popd
