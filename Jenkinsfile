currentBuild.displayName = "rene-container-#"+currentBuild.number+"-"+currentBuild.durationString
pipeline {
    agent any
    environment {
        ssh_kmaster ='ssh -o StrictHostKeyChecking=no -l root kmaster'
        image = 'renveg2010/apache'
        docker_username = credentials('docker-username')
        docker_password = credentials('docker-password')
    }
    stages {
        stage ('clone repo'){
            steps {
            sh 'git clone https://github.com/renve/jenkins-test.git'
            sh 'ls'
            }
        }
        stage ('build container') {
            steps {
                
                sshagent(['e29d4630-587f-4f5c-bcee-fcb592ea9a1c']) {
                    sh """
                    
                    ${ssh_kmaster} rm -rf /tmp/docker-${BUILD_NUMBER}
                    ${ssh_kmaster} mkdir /tmp/docker-${BUILD_NUMBER}
                    scp -o StrictHostKeyChecking=no Dockerfile index.html root@kmaster:/tmp/docker-${BUILD_NUMBER}
                    ${ssh_kmaster} ls /tmp/docker-${BUILD_NUMBER}
                    ${ssh_kmaster} pwd
                    ${ssh_kmaster} cat Dockerfile
                    ${ssh_kmaster} docker build -t renveg2010/apache:${BUILD_NUMBER} /tmp/docker-${BUILD_NUMBER}
                    ${ssh_kmaster} docker images | grep ${image}
                    ${ssh_kmaster} docker login -u $docker_username -p $docker_password
                    ${ssh_kmaster} rm -rf /tmp/docker*
                    ${ssh_kmaster} docker rm -rf \$(docker images | grep ${image}:*)
                    """
                
                }
                
            }

        }    
    }
}