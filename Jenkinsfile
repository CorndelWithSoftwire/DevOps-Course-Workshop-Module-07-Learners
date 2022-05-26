pipeline{
    agent none

    stages{
        stage('dotnet'){
           agent {
                docker {image 'mcr.microsoft.com/dotnet/sdk:6.0'}
            }
            steps{
                sh 'cd ./DotnetTemplate.Web/'
                sh 'dotnet build'
                sh 'dotnet test'
            }
        }

        stage('npm'){
            steps{
                echo 'Testing'
            }
        }


    }



}