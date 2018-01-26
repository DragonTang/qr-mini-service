#!bin/bash

tag=$(date +%Y%m%d%H%M%S)

imageName=gmg-adviser-qrload-service

dcloudImage="${imageName}:${tag}"
dcloudImage1="${imageName}:latest"


docker build -t ${imageName} .

docker tag -f "${imageName} ${dcloudImage}"
docker push "${dcloudImage}"

docker tag -f "${imageName} ${dcloudImage1}"
docker push "${dcloudImage1}"

echo '============ push success ============'

