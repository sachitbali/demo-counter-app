pipeline {
    agent any
    tools {
        maven "Maven3"
    }

    stages {
        stage('Fetch Code') {
            steps {
                git branch: 'main', url: 'https://github.com/sachitbali/demo-counter-app.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn install -DskipTests'
            }
        }
        stage('Unit Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Sonar Quality Test') {
            environment {
                scannerHome = tool 'Sonar'
            }
            steps {
                withSonarQubeEnv(credentialsId: 'Sonarqube') {
                    sh 'mvn clean package sonar:sonar'
                }
            }
        }
    }
}
