#!/bin/bash

docker login --username = ilamathivinoth --password = dckr_pat_thfZomxqdadG564KxFMAVG1WABg
docker tag app:v1 ilamathivinoth/dev
docker push ilamathivinoth/dev
if [[ $GIT_BRANCH == "main" ]]; then
docker tag app:v1 ilamathivinoth/prod
docker push ilamathivinoth/prod
elif [[ $GIT_BRANCH == "dev" ]]; then
docker tag app:v1 ilamathivinoth/dev
docker push ilamathivinoth/dev
else
echo "pipeline successful"
fi

docker compose up -d

