currentBuild.displayName = "rene-container-#"+currentBuild.number+"-"+currentBuild.timeInMillis
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