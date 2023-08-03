pipeline{
    agent any
    tools {
        maven "maven"
        
    }
    stages{
        stage('Fetch Code'){
            steps{
                git branch: 'main', url: 'https://github.com/sachitbali/demo-counter-app.git'
            }
        }
    }
}

        
