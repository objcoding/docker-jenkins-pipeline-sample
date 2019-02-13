#!/bin/bash

# env
active=${1:-master}
registry="172.16.0.13:5000"
timestamp=`date +%Y%m%d%H%M%S`
servicename=docker-jenkins-sample

# build
echo "构建镜像：$registry/$servicename:$active-$timestamp"
docker build --build-arg ACTIVE=${active} -t ${registry}/${servicename}:${active}-${timestamp} .
echo "上传镜像（tiemstamp）：$registry/$servicename:$active-$timestamp"
docker push ${registry}/${servicename}:${active}-${timestamp}
echo "上传镜像（latest）：$registry/$servicename:$active-latest"
docker tag ${registry}/${servicename}:${active}-${timestamp} ${registry}/${servicename}:${active}-latest
docker push ${registry}/${servicename}:${active}-latest
echo "构建完成！"