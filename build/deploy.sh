#!/bin/bash
docker login -u ilamathivinoth -p dckr_pat_4ROxiLP-UeHOLlTgQjnC2yfNbNU
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


