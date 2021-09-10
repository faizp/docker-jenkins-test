pipeline {
    agent any

    stages {
        stage('check') {
            steps {
                echo 'Project build'
                pwd()
            }
        }
        stage('build') {
            steps {
                bat '''docker-compose up 
                docker-compose build'''
            }
        }
        stage('deploy') {
            steps {
                echo 'Project deployed'
            }
        }
    }
}
