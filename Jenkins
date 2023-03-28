pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/amrahmedsaid/Devops'
                sh "docker build -t todo-app ."
                sh "docker run todo-app ."
            }
            }
        }
    }
