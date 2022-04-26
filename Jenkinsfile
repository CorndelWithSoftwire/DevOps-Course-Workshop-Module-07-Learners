pipeline {
    agent none

    stages {
        stage('C# Tests') {
            agent {
                docker { image: 'microsoft-dotnet-sdk:6.0-bullseye-slim' }
            }
            steps {
                checkout scm
                sh dotnet build
                sh dotnet test
            }
        }
        stage('Typescript Tests') {
            agent {
                docker { image: 'node:17-bullseye' }
            }

            steps {
                checkout scm
                cd DotnetTemplate.Web
                sh npm install
                sh npm run build
                sh npm t
                sh npm run lint
            }
        }
    }
}
