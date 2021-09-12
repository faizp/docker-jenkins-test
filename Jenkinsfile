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
                 sh 'docker-compose build -v $(which docker):/usr/bin/docker'
                 sh 'docker-compose up -v $(which docker):/usr/bin/docker'
                
            }
        }
        stage('deploy') {
            steps {
                echo 'Project deployed'
            }
        }
    }
}
