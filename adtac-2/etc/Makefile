SHELL := /bin/bash

.PHONY: all
all: systemd

.PHONY: systemd
systemd:
	[ -d ${HOME}/.config/systemd ] || ln -s $(shell pwd)/systemd ${HOME}/.config/systemd

.PHONY: compose
compose:
	[ -d ${HOME}/.config/compose ] || ln -s $(shell pwd)/compose ${HOME}/.config/compose
