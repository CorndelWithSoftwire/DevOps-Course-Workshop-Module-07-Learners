pipeline {
    agent {
        docker { image 'node:14-alpine' }
        }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('C# code build & test') {
            agent {
                docker { image 'dotnet' }
            }
            steps {
//                 sh "sudo apk add bash icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib"
//                 sh "chmod 777 dotnet-install.sh"
//                 sh "#!/bin/bash ./dotnet-install.sh -c Current"
                sh "dotnet build"
                sh "dotnet test"
            }
        }
        stage('npm build & test') {
            steps {
                dir('DotnetTemplate.Web') {
                    sh "npm install"
                    sh "npm run build"
                    sh "npm run lint"
                    sh "npm t"
                }
            }
        }
    }
}
