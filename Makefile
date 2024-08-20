.PHONY: up update stop build

PROJECT_SLUG := "ob-shop"
APP_NAME := $(PROJECT_SLUG)

# ANSI color codes
GREEN=$(shell tput -Txterm setaf 2)
YELLOW=$(shell tput -Txterm setaf 3)
RED=$(shell tput -Txterm setaf 1)
BLUE=$(shell tput -Txterm setaf 6)
RESET=$(shell tput -Txterm sgr0)

# up:
# 	docker compose up -d

up: ## Start docker development environment
	@echo "$(YELLOW)Starting docker environment...$(RESET)"
	docker compose -p $(PROJECT_SLUG) up --build

update:  ## Update test environment containers (eg: after config changes)
	docker compose -p $(PROJECT_SLUG) up --build -d

stop: ## Stop test development environment
	@COMPOSE_PROJECT_NAME=$(PROJECT_SLUG) docker compose down

build:
	docker compose build

logs:
	docker compose logs -f

restart:
	docker compose down && docker compose up -d

# test:
#     docker-compose run --rm backend npm test
#     docker-compose run --rm frontend npm test