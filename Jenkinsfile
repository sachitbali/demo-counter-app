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
    }
}