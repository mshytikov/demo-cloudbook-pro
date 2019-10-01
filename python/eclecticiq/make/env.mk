.PHONY: env

COMPONENTS := $(subst src/, ,$(wildcard src/*))

component: | _component-validate

_component-validate:
ifeq ($(filter $(component),$(COMPONENTS)),)
	@echo "ERROR: component is required. supported: $(COMPONENTS)"
	@exit 1
endif
