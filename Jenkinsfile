pipeline {
	environment { DOTNET_CLI_HOME='/tmp/dotnet_cli_home'}
    
    agent any
	stages {
		stage('Checkout') {
			steps {
				checkout scm
			}
		}
		stage('C# Stage') {
			agent {
				docker {
					image 'mcr.microsoft.com/dotnet/sdk:5.0'
					reuseNode true	
				}
			}
			stages {
				stage("building C#") {
					steps {
						sh 'dotnet build'
					}
				}
				stage('Testing C#') {
					steps {
						sh 'dotnet test'
					}
				}	
			}	
		}
		
		stage('NPM') {
			agent {
				docker {
					image 'node:14-alpine'
					reuseNode true	
				}
			}
			stages {
				stage("Installing NPM") {
					steps {
						dir("DotnetTemplate.Web") {
							sh 'npm install'
						}
					}
				}
				stage('Building NPM') {
					steps {
						dir("DotnetTemplate.Web") {
							sh 'npm run build'
						}
					}
				}
				stage('Testing Typescript') {
					steps {
						dir("DotnetTemplate.Web") {
							sh 'npm t'
						}
					}
				}
				stage('Running linter on Typescript') {
					steps {
						dir("DotnetTemplate.Web") {
							sh 'npm run lint'
						}
					}
				}
			}
		}
		
	}
}