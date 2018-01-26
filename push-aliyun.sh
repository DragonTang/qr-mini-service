#!bin/bash

tag=$(date +%Y%m%d%H%M%S)

imageName=gmg-adviser-qrload-service

aliImage="registry.cn-shanghai.aliyuncs.com/ytx-zq/${imageName}${tag}"
aliImage1="registry.cn-shanghai.aliyuncs.com/ytx-zq/${imageName}:latest"

docker login -p ${ALIYUN_PASSWORD} -u ${ALIYUN_USERNAME} -e developer@baidao.com registry.cn-shanghai.aliyuncs.com

docker build -t ${imageName} .

docker tag -f ${imageName} ${aliImage}
docker push ${aliImage}

docker tag -f ${imageName} ${aliImage1}
docker push ${aliImage1}



