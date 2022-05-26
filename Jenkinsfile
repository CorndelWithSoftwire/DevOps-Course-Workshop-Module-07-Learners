pipeline{
    agent any

    stages{
        stage('dotnet'){
            steps{
                sh 'su apt update; \
                su apt install -y apt-transport-https && \
                su apt update && \
                su apt install -y dotnet-sdk-6.0'

                sh 'su dotnet build'
                sh 'su dotnet test'
            }
        }

        stage('npm'){
            steps{
                echo 'Testing'
            }
        }


    }



}