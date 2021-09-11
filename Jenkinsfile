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
                 sh '''#!/bin/bash
                    echo "hello world"
                    which cat
                    which python
                    which docker
                    which docker-compose
                    '''
            }
        }
        stage('deploy') {
            steps {
                echo 'Project deployed'
            }
        }
    }
}
