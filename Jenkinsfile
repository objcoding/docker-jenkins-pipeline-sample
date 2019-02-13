#!/usr/bin/env groovy

pipeline {
    agent any
    environment {
        GIT_REPO = "https://github.com/objcoding/docker-deploy-tutorial.git"
        BUILD_IMAGE_SCRIPT_PATH = "build.sh"
    }

    stages {
        stage('获取代码') {
            steps {
                git([url: "${GIT_REPO}", branch: "docker-jenkins"])
            }
        }

        stage('编译代码') {
            steps {
                withMaven(maven: 'maven 3.6') {
                    sh "mvn -U -am clean package -DskipTests"
                }
            }
        }

        stage('构建镜像') {
            steps {
                sh "sh ${BUILD_IMAGE_SCRIPT_PATH} docker-jenkins"
            }
        }


    }
}