currentBuild.displayName = "rene-container-#"+currentBuild.number+"-"+currentBuild.durationString
pipeline {
    agent any
    environment {
        version = 'BUILD_NUMBER'
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
                sh "docker build . -t renveg2010/apache:${version}"
            }
        }    
    }
}