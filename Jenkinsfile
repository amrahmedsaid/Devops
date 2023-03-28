pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS= credentials('amrdocker')
    }
    stages {
        stage('checkout code from repo') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/amrahmedsaid/Devops'               
            }
            }
        stage('compile the code'){
            steps {
                // Get some code from a GitHub repository
                  sh 'npm install'
                sh 'npm run build'
                stash includes: 'dist/', name: 'dist'
            }
         }
        stage('Tag build to Docker Image'){
            steps{
               unstash 'dist'
                sh 'ls dist'
                sh 'docker build -t amrsaid172/todo-application .'
 
            }
        
        }
        stage('login to docker'){
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                  
                 }
        }
         stage('Push to docker hub') {
      steps {
        sh 'docker push amrsaid172/todo-application'
      }
    }
       }
    }
