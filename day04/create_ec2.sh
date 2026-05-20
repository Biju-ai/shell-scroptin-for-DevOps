#!/bin/bash
.PHONY build up run up
DOCKER_COMPOSE :=docker-compose

OS:=$(shell uname)


build:
ifeq ($(os), Linux)
@echo "Running in @(os)"
$(DOCKER_COMPOSE) build
endif
ifeq ($(os), WINDOWS_NT)
@echo "please add winodws command"
endif

up:
$(DOCKER_COMPOSE) up -d

down:
$(DOCKER_COMPOSE) down

clean:
  docker system prune 



