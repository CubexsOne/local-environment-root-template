#!/bin/bash

echo "Starting local environment..."
docker compose up
echo "Stopping local environment..."
docker compose down