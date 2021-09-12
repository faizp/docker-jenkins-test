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
                 sh 'sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose'
                 sh 'docker-compose build -v $(which docker-compose):/usr/bin/docker'
                 sh 'docker-compose up -v $(which docker-compose):/usr/bin/docker'
                
            }
        }
        stage('deploy') {
            steps {
                echo 'Project deployed'
            }
        }
    }
}
