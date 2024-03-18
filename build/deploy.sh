#!/bin/bash


if [ "$GIT_BRANCH" = "origin/dev" ]; then
echo "hello world"
docker build -t ilamathivinoth/dev /var/lib/jenkins/workspace/New-project/build
echo dckr_pat_4ROxiLP-UeHOLlTgQjnC2yfNbNU | docker login -u ilamathivinoth --password-stdin
docker push ilamathivinoth/dev
elif [ "$GIT_BRANCH" = "origin/main" ]; then
echo dckr_pat_4ROxiLP-UeHOLlTgQjnC2yfNbNU | docker login -u ilamathivinoth --password-stdin
docker pull ilamathivinoth/dev
docker tag ilamathivinoth/dev ilamathivinoth/prod
docker push ilamathivinoth/prod
else
echo "pipeline Unsuccessful"
fi
