pipeline {
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
				stage("building C#") {}
					steps {
						echo 'Building...'
						sh 'dotnet build'
					}
				}
				stage('Testing C#') {
					steps {
						echo 'Testing...'
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
			steps {
				echo 'npm install'
			}
		}
		stage('Building Typescript') {
			steps {
				echo 'Building Typescript....'
			}
		}
		stage('Testing Typescript') {
			steps {
				echo 'Testing Typescript....'
			}
		}
		stage('Running linter on Typescript') {
			steps {
				echo 'Running linter on Typescript....'
			}
		}
	}
}