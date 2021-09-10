pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                echo 'Project build'
                pwd()
            }
        }
        stage('test') {
            steps {
                echo 'project tested'
            }
        }
        stage('deply') {
            steps {
                echo 'Project deployed'
            }
        }
    }
}
