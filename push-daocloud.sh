#!bin/bash

tag=$(date +%Y%m%d%H%M%S)

imageName=gmg-adviser-qrload-service

dcloudImage=daocloud.io/baidao/${imageName}:${tag}
dcloudImage1=daocloud.io/baidao/${imageName}:latest


docker build -t ${imageName} .

docker tag ${imageName} ${dcloudImage}
docker push ${dcloudImage}

docker tag ${imageName} ${dcloudImage1}
docker push ${dcloudImage1}

echo '============ push success ============'

