#!/bin/bash
docker build -f Dockerfile.tci-cli --tag tci/cli:latest .
docker build -f Dockerfile.stream-tci-logs --tag tci/logs/stream:latest .

