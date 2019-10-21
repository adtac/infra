SHELL := /bin/bash

.PHONY: all
all: etc

.PHONY: etc
etc: global_etc local_etc

.PHONY: global_etc
global_etc:
	cd ../global && $(MAKE) server

.PHONY: local_etc
local_etc:
	cd etc && $(MAKE)
