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
                 sh 'docker-compose build'
                 sh 'docker-compose up'
                
            }
        }
        stage('deploy') {
            steps {
                echo 'Project deployed'
            }
        }
    }
}
