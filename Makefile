.DEFAULT_GOAL := help

# Project name to use with docker-compose
PROJECT_NAME := airflow

# Define the docker-compose command with the project name flag
DC := DOCKER_PROJECT_NAME=$(PROJECT_NAME) docker compose

# Targets
help:
	@echo "Available targets:"
	@echo "  up     - Starts the containers"
	@echo "  downv  - Stops and removes the containers and network as well as volumes"
	@echo "  down   - Stops and removes the containers but keeps the volume"

up:
	@$(DC) up -d

downv:
	@$(DC) down -v

down:
	@$(DC) down

.PHONY: help up down