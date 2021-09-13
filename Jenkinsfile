pipeline {
    agent any

    environment {
        PATH = "$PATH:/usr/local/bin"
    }
    stages {
        stage('check') {
            steps {
                echo 'Project build'
                pwd()
            }
        }
        stage('build') {
            steps {
                echo "PATH is: $PATH"
                echo $(which docker)
                echo $(which docker-compose)
                
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
