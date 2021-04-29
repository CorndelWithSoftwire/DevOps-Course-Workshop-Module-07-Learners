pipeline {
    agent none
    }

    stages {
        stage('1'){
            agent {
                docker { image 'mcr.microsoft.com/dotnet/sdk:3.1' }
            }
            steps{
                sh 'dotnet build'
            }
        }
    }
}