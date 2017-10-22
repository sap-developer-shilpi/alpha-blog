#!/usr/bin/env groovy
node {
	stage('Checkout and Test'){
		checkout scm
		echo "tests successfull"
	}
	stage('Deploy To Heroku'){
		echo "Deploy"
	}
	stage('Integration Tests'){
		echo "Run integration tests"
	}

}
