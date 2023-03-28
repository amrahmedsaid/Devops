pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/amrahmedsaid/Devops'               
            }
            }
        stage('build'){
            steps {
                // Get some code from a GitHub repository
                  sh 'npm install'
                sh 'npm run build'
                stash includes: 'dist/', name: 'dist'
            }
         }
        stage('Build and Push Docker Image'){
            steps{
                echo hamada
            }
        }
       }
    }
