pipeline {
    agent none
    stages {
        stage('Back-End Build and Test') {
            agent {
                docker { image 'microsoft-dotnet-core-sdk' }
            }
            steps {
               sh 'dotnet build'
               sh 'dotnet test'
            }
        }
        stage('Front-End') {
            agent {
                docker { image 'node:14-alpine' }
            }
            dir('DotnetTemplate.Web') {
                sh 'npm i'
                sh 'npm run build'
                sh 'npm run lint'
                sh 'npm t'
            }
        }
    }
}