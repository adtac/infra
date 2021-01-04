SHELL := /bin/bash

.PHONY: workstation
workstation: bin etc homedirs

.PHONY: server
server: bin etc homedirs

.PHONY: bin
bin:
	[ -d ${HOME}/bin ] || ln -s $(shell pwd)/bin ${HOME}/bin

.PHONY: etc
etc:
	cd etc && $(MAKE) $(MAKECMDGOALS)

.PHONY: homedirs
homedirs:
	cd ${HOME} && mkdir -p dl docs media mnt src tmp venv www
