#!/bin/bash


if [ "$GIT_BRANCH" = "origin/dev" ]; then
docker build -t ilamathivinoth/dev:webhook /var/lib/jenkins/workspace/New-project/build
echo dckr_pat_4ROxiLP-UeHOLlTgQjnC2yfNbNU | docker login -u ilamathivinoth --password-stdin
docker push ilamathivinoth/dev:webhook
elif [ "$GIT_BRANCH" = "origin/main" ]; then
echo dckr_pat_4ROxiLP-UeHOLlTgQjnC2yfNbNU | docker login -u ilamathivinoth --password-stdin
docker pull ilamathivinoth/dev:webhook
docker tag ilamathivinoth/dev:webhook ilamathivinoth/prod:webhook
docker push ilamathivinoth/prod:webhook
else
echo "pipeline Unsuccessful"
fi
