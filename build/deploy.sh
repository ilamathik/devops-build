#!/bin/bash

docker login --username =ilamathivinoth --password =dckr_pat_G6kRN127hG362EA-fDWLyDZTrRo
docker tag app:v1 ilamathivinoth/dev:v1
docker push ilamathivinoth/dev:v1
if [[ $GIT_BRANCH == "main"]]; then
docker tag app:v1 ilamathivinoth/prod:v1
docker push ilamathivinoth/prod:v1
elif[[ $GIT_BRANCH == "dev"]]; then
docker tag app:v1 ilamathivinoth/dev:v1
docker push ilamathivinoth/dev:v1
else
echo "pipeline successful"
fi

docker compose up -d

