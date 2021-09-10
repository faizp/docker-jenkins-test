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
                 echo "hello"
                 ls
                 pwd
                 docker-compose -f /var/jenkins_home/workspace/jenkins_pipeline_test build
                 docker-compose -f /var/jenkins_home/workspace/jenkins_pipeline_test up
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
