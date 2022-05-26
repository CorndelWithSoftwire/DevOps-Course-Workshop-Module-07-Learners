pipeline{
    agent {
        docker {image 'slim-buster:latest'}
        }

    stages{
        stage('dotnet'){
            steps{
                sh 'apt update; \
                apt install -y apt-transport-https && \
                apt update && \
                apt install -y dotnet-sdk-6.0'

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