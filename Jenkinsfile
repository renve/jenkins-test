currentBuild.displayName = "rene-container-#"+currentBuild.number+"-"+currentBuild.durationString
pipeline {
    agent any
    environment {
        
        ssh_kmaster ='ssh -o StrictHostKeyChecking=no -l root kmaster'
        scp_kmaster ='scp -o StrictHostKeyChecking=no -l root kmaster'
    }
    stages {
        stage ('clone repo'){
            steps {
            sh 'git clone https://github.com/renve/jenkins-test.git'
            sh 'ls'
            sh 'pwd'
            }
        }
        stage ('build container') {
            steps {
                sshagent(['e29d4630-587f-4f5c-bcee-fcb592ea9a1c']) {
                    sh """
                    
                    ${ssh_kmaster} rm -rf /tmp/docker-${BUILD_NUMBER}
                    ${ssh_kmaster} mkdir /tmp/docker-${BUILD_NUMBER}
                    scp -o StrictHostKeyChecking=no Dockerfile root@kmaster:/tmp/docker-${BUILD_NUMBER}
                    ${ssh_kmaster} ls /tmp/docker-${BUILD_NUMBER}
                    ${ssh_kmaster} pwd
                    ${ssh_kmaster} cat Dockerfile
                    """
                }
            }

        }    
    }
}