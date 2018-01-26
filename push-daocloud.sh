#!bin/bash

tag=$(date +%Y%m%d%H%M%S)

imageName=gmg-adviser-qrload-service

dcloudImage=${imageName}:${tag}
dcloudImage1=${imageName}:latest


docker build -t ${imageName} .

docker tag ${imageName} ${dcloudImage}
docker push ${dcloudImage}

docker tag ${imageName} ${dcloudImage1}
docker push ${dcloudImage1}

echo '============ push success ============'

