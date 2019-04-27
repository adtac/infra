SHELL := /bin/bash

.PHONY: all
all: sway termite zsh vim i3status

.PHONY: server
server: zsh vim

.PHONY: workstation
workstation: all

.PHONY: sway
sway:
	[ -d ${HOME}/.config/sway ] || ln -s $(shell pwd)/sway ${HOME}/.config/sway

.PHONY: i3status
i3status: sway
	[ -d ${HOME}/.config/i3status ] || ln -s $(shell pwd)/i3status ${HOME}/.config/i3status

.PHONY: termite
termite:
	[ -d ${HOME}/.config/termite ] || ln -s $(shell pwd)/termite ${HOME}/.config/termite

.PHONY: zsh
zsh:
	[ -f ${HOME}/.zshrc ] || ln -s $(shell pwd)/zsh/.zshrc ${HOME}/.zshrc
	[ -d ${HOME}/.zsh ] || ln -s $(shell pwd)/zsh/.zsh ${HOME}/.zsh

.PHONY: vim
vim:
	[ -f ${HOME}/.vimrc ] || ln -s $(shell pwd)/vim/.vimrc ${HOME}/.vimrc
	[ -d ${HOME}/.vim ] || ln -s $(shell pwd)/vim/.vim ${HOME}/.vim
	command vim +PlugInstall +qa
