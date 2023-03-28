pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/amrahmedsaid/Devops'               
            }
            stage ('Build')
    catchError {
      // Install dependencies
      sh 'npm install'
      // Build assets with eg. webpack 
      sh 'npm run build'
    }
  }
            }
        }
    }
