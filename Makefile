.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run: ## Start all defined services
	@./scripts/make-run.sh

build-all: ## Build all defined services

build: ## Build
	@cd ./services/${service} && make build
