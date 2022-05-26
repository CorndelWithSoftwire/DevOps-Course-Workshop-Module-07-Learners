pipeline{
    agent {
        docker {image 'ubuntu:latest'}
        }

    stages{
        stage('dotnet'){
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