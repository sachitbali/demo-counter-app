pipeline {
    agent any

    stages {
        stage('sonar quality check') {
            agent{
                docker{
                    image 'maven'
                }
            }
            steps {
                 
                withSonarQubeEnv(credentialsId: 'Sonarqube')
                sh 'mvn clean package sonar:sonar'
            }
        }
    }
}
