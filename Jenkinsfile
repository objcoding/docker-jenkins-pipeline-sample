#!groovy

// 在多分支构建下，严格规定Jenkinsfile只存在可以发版的分支上

// 引用在jenkins已经全局定义好的library
library 'objcoding-pipeline-library'
    def map = [:]

    // 远程管理节点地址（用于执行发版）
    map.put('REMOTE_HOST','xxx.xx.xx.xxx')
    // 项目gitlab代码地址
    map.put('REPO_URL','https://github.com/objcoding/docker-jenkins-pipeline-sample.git')
    // 分支名称
    map.put('BRANCH_NAME','master')
    // 服务栈名称
    map.put('STACK_NAME','vipay')

// 调用library中var目录下的build.groovy脚本
build(map)