##
.DEFAULT_GOAL := help

.PHONY: help admin_user hawkular_agent storage_classes vault spring_example local aws requirements

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort -k2,2

install: ## init
	./init.sh
