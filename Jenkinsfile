pipline{

    agent docker

    stages{
        stage('dotnet'){
            steps{
                sh 'sudo apt-get update; \
                sudo apt-get install -y apt-transport-https && \
                sudo apt-get update && \
                sudo apt-get install -y dotnet-sdk-6.0'

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