SHELL := /bin/bash

.PHONY: all
all: systemd kanshi

.PHONY: systemd
systemd:
	[ -d ${HOME}/.config/systemd ] || ln -s $(shell pwd)/systemd ${HOME}/.config/systemd

.PHONY: kanshi
kanshi:
	[ -d ${HOME}/.config/kanshi ] || ln -s $(shell pwd)/kanshi ${HOME}/.config/kanshi
