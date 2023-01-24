pipeline {
    agent none
    environment {
        DOTNET_CLI_HOME = "/tmp/DOTNET_CLI_HOME"
        XDG_DATA_HOME = "/tmp/XDG_DATA_HOME"
    }
    stages {
        stage('Dotnet Build & Test') {
            agent {
                docker { 
                    image 'mcr.microsoft.com/dotnet/sdk:7.0'
                }
            }
            steps {
                sh 'dotnet build'
                sh 'dotnet test'
            }
        }
        stage('Javascript Build & Test') {
            agent {
                docker {
                    image 'node:16.13.0-buster-slim'
                }
            }
            steps {
                sh 'cd ./DotnetTemplate.Web && npm install'
                sh 'cd ./DotnetTemplate.Web && npm run build'
                sh 'cd ./DotnetTemplate.Web && npm t'
                sh 'cd ./DotnetTemplate.Web && npm run lint'
            }
        }
    }
}
