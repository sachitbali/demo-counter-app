pipeline{
    agent any
    tools {
        maven "maven"
        jdk "OracleJDK11"
    }
    stages{
        stage('Fetch Code'){
            steps{
                git branch: 'main', url: 'https://github.com/sachitbali/demo-counter-app.git'
            }
        }
    }
}

        
