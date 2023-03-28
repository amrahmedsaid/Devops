pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIAL= credentials('amrdocker')
    }
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
               unstash 'dist'
                sh 'docker build .'
 
            }
        
        }
        stage('logn to docker'){
            steps{sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                 }
        }
       }
    }
