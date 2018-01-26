#!bin/bash

tag=$(date +%Y%m%d%H%M%S)

imageName=gmg-adviser-qrload-service

dcloudImage="registry.cn-shanghai.aliyuncs.com/ytx-zq/${imageName}:${tag}"
dcloudImage1="registry.cn-shanghai.aliyuncs.com/ytx-zq/${imageName}:latest"


docker build -t ${imageName} .

docker tag -f ${imageName} ${dcloudImage}
docker push ${dcloudImage}

docker tag -f ${imageName} ${dcloudImage1}
docker push ${dcloudImage1}

echo '============ push success ============'

