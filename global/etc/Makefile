SHELL := /bin/bash

.PHONY: workstation
workstation: server sway fontconfig dunst termite zathura ledger

.PHONY: server
server: config zsh vim git

.PHONY: config
config:
	mkdir -p ${HOME}/.config

.PHONY: sway
sway:
	[ -d ${HOME}/.config/sway ] || ln -s $(shell pwd)/sway ${HOME}/.config/sway

.PHONY: fontconfig
fontconfig: 
	[ -f ${HOME}/.fonts.conf ] || ln -s $(shell pwd)/fontconfig/.fonts.conf ${HOME}/.fonts.conf

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

.PHONY: git
git:
	[ -f ${HOME}/.gitconfig ] || ln -s $(shell pwd)/git/.gitconfig ${HOME}/.gitconfig

.PHONY: zathura
zathura:
	[ -d ${HOME}/.config/zathura ] || ln -s $(shell pwd)/zathura ${HOME}/.config/zathura

.PHONY: dunst
dunst:
	[ -d ${HOME}/.config/dunst ] || ln -s $(shell pwd)/dunst ${HOME}/.config/dunst

.PHONY: ledger
ledger:
	[ -f ${HOME}/.ledgerrc ] || ln -s $(shell pwd)/ledger/.ledgerrc ${HOME}/.ledgerrc
