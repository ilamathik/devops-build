#!/bin/bash

# Tag the image with the Docker Hub repository name and version
docker tag app:v1 ilamathivinoth/prod
docker tag app:v1 ilamathivinoth/dev

# Push the image to Docker Hub
docker push ilamathivinoth/prod
docker push ilamathivinoth/dev