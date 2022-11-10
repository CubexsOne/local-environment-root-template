#!/bin/bash

echo "Starting local environment..."
docker compose --file ./local/docker-compose.yaml up
echo "Stopping local environment..."
docker compose --file ./local/docker-compose.yaml down