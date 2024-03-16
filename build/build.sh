#!/bin/bash
docker build -t app:v1 .
docker-compose up -d