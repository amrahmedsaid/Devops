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
         stage('Build and Push Docker Image') {
      agent any
      environment {
        DOCKER_PUSH = credentials('docker_push')
      }
      steps {
        unstash 'dist'
        sh 'docker build -t $DOCKER_PUSH_URL/frontend .'
        sh 'docker login -u $DOCKER_PUSH_USR -p $DOCKER_PUSH_PSW $DOCKER_PUSH_URL'
        sh 'docker push $DOCKER_PUSH_URL/frontend'
      }
       }
    }
