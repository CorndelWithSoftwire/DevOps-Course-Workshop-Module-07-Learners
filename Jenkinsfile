pipeline {
    agent any
	
	stage('Checkout') {
		steps {
			checkout scm
		}
	}
	stage('Build') {
		agent {
			docker {
				image 'mcr.microsoft.com/dotnet/sdk:5.0'
				reuseNode true	
			}
		}
		steps {
			echo 'Building..'
			sh 'dotnet build'
		}
	}
	stage('Testing C#') {
		steps {
			echo 'Testing C#..'
		}
	}
	stage('Installing') {
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
	stage('Installing') {
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