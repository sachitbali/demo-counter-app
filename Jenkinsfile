pipeline{
    agent any
    stages{
        stage('git checkout'){
            steps{
                script{
                    git branch: 'main', url: 'https://github.com/sachitbali/demo-counter-app.git'
                }
            }
        }
        stage('Unit Test'){
            steps{
                script{
                    sh'mvn test'
                }
            }
        }
        stage('Integration testing'){
            steps{
                script{
                    sh'mvn verify -DskipUnitTests'
                }
            }
        }
        stage('Static code analysis'){
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'sonar-api') {
                        sh'mvn clean package sonar:sonar'
    
                        }
                  
                }
            }
        }
        stage('build code'){
            steps{
                script{
                    sh'mvn clean install'
                  
                }
            }
        
        }
        stage('build docker image'){
            steps{
                script{
                    sh'docker build -t $JOB_NAME:v1.$BUILD_ID .'
                    sh'docker build -t $JOB_NAME:v1.$BUILD_ID sachitbali/$JOB_NAME:v1.$BUILD_ID'
                    sh'docker build -t $JOB_NAME:v1.$BUILD_ID sachitbali/JOB_NAME:latest'
                  
                }
            }
        
        }
    }
}