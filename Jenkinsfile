pipeline {
    agent none

    stages {
        stage('C# code build & test') {
            agent {
                docker { image 'mcr.microsoft.com/dotnet/sdk:5.0' }
            }
            environment {
                DOTNET_CLI_HOME = '/tmp/dotnet_cli_home'
            }
            steps {
                sh "dotnet build"
                sh "dotnet test"
            }
        }
        stage('npm build & test') {
            agent {
                docker { image 'node:14-alpine' }
            }
            steps {
                dir('DotnetTemplate.Web') {
                    sh "npm install"
                    sh "npm run build"
                    sh "npm run lint"
                    sh "npm run test-with-coverage"
                    publishCoverage adapters: [
                        istanbulCoberturaAdapter('coverage/cobertura-coverage.xml'){
                            thresholds {
                                thresholdTarget "90"
                                }
                            }
                    ]
                }
            }
        }
    }
}
