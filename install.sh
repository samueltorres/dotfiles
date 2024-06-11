#!/bin/bash

DIR=$HOME/src/github.com/samueltorres/dotfiles

DOTFILES=(
	".tmux.conf"
	".config/nvim"
)

for dotfile in "${DOTFILES[@]}";do
	rm -rf "${HOME}/${dotfile}"
	ln -sf "${DIR}/${dotfile}" "${HOME}/${dotfile}"
done
