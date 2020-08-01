currentBuild.displayName = 'rene-container-#'+'current.Build.number'
pipeline {
    agent any

    stages {
        stage ('clone repo'){
            steps {
            sh 'git clone https://github.com/renve/jenkins-test.git'
            sh 'ls'
            }
        }
    }
}