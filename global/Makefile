SHELL := /bin/bash

.PHONY: workstation
workstation: bin etc

.PHONY: server
workstation: bin etc

.PHONY: bin
bin:
	[ -d ${HOME}/bin ] || ln -s $(shell pwd)/bin ${HOME}/bin

.PHONY: etc
etc:
	cd etc && $(MAKE) $(MAKECMDGOALS)
