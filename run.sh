#!/bin/bash
#
# Author: Osmandi
# Date: 2025-06-26
#
# Script Name: run.sh
# Description: 
#   Builds a Docker image for langchain_ollama_local and runs it with GPU support,
#   mounting a volume for Ollama data persistence.
#
# Usage:
#   ./run.sh
#
# Requirements:
#   - Docker installed with GPU support (NVIDIA Docker).
#

# Build docker image
docker build -f Dockerfile -t langchain_ollama_local .

# Run docker image with Nvidia GPU support
docker run --gpus all -v ollama:/root/.ollama langchain_ollama_local
