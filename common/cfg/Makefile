SHELL := /bin/bash

all: _sway _termite _zsh _vim _i3status

server: _zsh _vim

workstation: all

_sway:
	mkdir -p ${HOME}/.config/sway
	[ -f ${HOME}/.config/sway/config ] || ln -s $(pwd)/sway/config ${HOME}/.config/sway/config

_i3status: _sway
	mkdir -p ${HOME}/.config/i3status/config
	[ -f ${HOME}/.config/i3status/config ] || ln -s $(pwd)/i3status/config ${HOME}/.config/i3status/config

_termite:
	mkdir -p ${HOME}/.config/termite
	[ -f ${HOME}/.config/termite/config ] || ln -s $(pwd)/termite/config ${HOME}/.config/termite/config

_zsh:
	[ -f ${HOME}/.zshrc ] || ln -s $(pwd)/zsh/.zshrc ${HOME}/.zshrc
	[ -f ${HOME}/.zsh ] || ln -s $(pwd)/zsh/.zsh ${HOME}/.zsh

_vim:
	[ -f ${HOME}/.vimrc ] || ln -s $(pwd)/vim/.vimrc ${HOME}/.vimrc
	[ -f ${HOME}/.vim ] || ln -s $(pwd)/vim/.vim ${HOME}/.vim
	mkdir -p ${HOME}/.config/nvim
	[ -f ${HOME}/.config/nvim/init.vim ] || ln -s $(pwd)/vim/.vimrc ${HOME}/.config/nvim/init.vim
	command vim +PlugInstall +qa
