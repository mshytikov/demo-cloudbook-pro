SHELL := /bin/bash
export PATH := $(CURDIR)/bin:$(PATH)

include make/env.mk
include make/jupyter.mk

SETUP_COMPONENTS:= $(addsuffix -setup, $(COMPONENTS))
START_COMPONENTS:= $(addsuffix -start, $(COMPONENTS))
STOP_COMPONENTS:= $(addsuffix -stop, $(COMPONENTS))
RESTART_COMPONENTS:= $(addsuffix -restart, $(COMPONENTS))
DESTROY_COMPONENTS:= $(addsuffix -destroy, $(COMPONENTS))
LOGS_COMPONENTS:= $(addsuffix -logs, $(COMPONENTS))

.DEFAULT_GOAL=readme

readme:
	cat README.md


$(SETUP_COMPONENTS):
	$(eval _component=$(subst -setup,,$@))
	docker-compose -f src/$(_component)/docker-compose.yaml \
	 	run --rm app ./bin/setup

$(START_COMPONENTS):
	$(eval _component=$(subst -start,,$@))
	docker-compose -f src/$(_component)/docker-compose.yaml up -d

$(STOP_COMPONENTS):
	$(eval _component=$(subst -stop,,$@))
	docker-compose -f src/$(_component)/docker-compose.yaml stop &

$(RESTART_COMPONENTS):
	$(eval _component=$(subst -restart,,$@))
	docker-compose -f src/$(_component)/docker-compose.yaml stop
	docker-compose -f src/$(_component)/docker-compose.yaml up -d

$(LOGS_COMPONENTS):
	$(eval _component=$(subst -logs,,$@))
	docker-compose -f src/$(_component)/docker-compose.yaml logs --tail 50 -f

$(DESTROY_COMPONENTS):
	$(eval _component=$(subst -destroy,,$@))
	docker-compose -f src/$(_component)/docker-compose.yaml down
