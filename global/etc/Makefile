SHELL := /bin/bash

.PHONY: workstation
workstation: sway i3status termite mpdscribble zathura zsh vim git

.PHONY: server
server: zsh vim git

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

.PHONY: git
git:
	[ -f ${HOME}/.gitconfig ] || ln -s $(shell pwd)/git/.gitconfig ${HOME}/.gitconfig

.PHONY: mpdscribble
mpdscribble:
	[ -d ${HOME}/.mpdscribble ] || mkdir ${HOME}/.mpdscribble
	[ -f ${HOME}/.mpdscribble/mpdscribble.conf ] || sed "s/LASTFM_PASSWORD/$$(pass last.fm/adtac)/g" $(shell pwd)/mpdscribble/mpdscribble.conf >${HOME}/.mpdscribble/mpdscribble.conf

.PHONY: zathura
zathura:
	[ -d ${HOME}/.config/zathura ] || ln -s $(shell pwd)/zathura ${HOME}/.config/zathura
