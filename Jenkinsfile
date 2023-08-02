pipeline{
    agent any

    stages{
        stage('git checkout')
        stage('sonar qulity gate check'){
            agent{
                docker{
                    image 'maven'
                }
            }
        }steps{
            script{
                withSonarQubeEnv(credentialsId: 'Sonarqube') {
                    sh 'mvn clean package sonar:sonar'
                }
            }
        }
    }
}
