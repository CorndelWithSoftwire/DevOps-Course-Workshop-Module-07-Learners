pipeline{
    agent none

    stages{
        stage('dotnet'){
           agent {
                docker {image 'ubuntu:latest'}
            }
            steps{
                sh 'sudo apt update; \
                sudo apt install -y apt-transport-https && \
                sudo apt update && \
                sudo apt install -y dotnet-sdk-6.0'

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