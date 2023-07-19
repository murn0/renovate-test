include $(PWD)/bin/colors.mk	

.PHONY: $(shell cat $(MAKEFILE_LIST) | awk -F':' '/^[a-z0-9_-]+:/ {print $$1}')	

all: install-aqua	

install-aqua: ## Install aqua (https://github.com/aquaproj/aqua)	
	@curl -sSfL -O https://raw.githubusercontent.com/aquaproj/aqua-installer/v2.1.2/aqua-installer
	@echo "36dc5833b04eb63f06e3bb818aa6b7a6e6db99a9  aqua-installer" | sha256sum -c
	@chmod +x aqua-installer
	@./aqua-installer -v v2.9.1
	@$(RM) ./aqua-installer
