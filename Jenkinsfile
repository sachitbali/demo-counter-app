pipeline{
    agent any
    stages{
        stage('git checkout'){
            script{
                sh'git branch: 'main', url: 'https://github.com/sachitbali/demo-counter-app.git''
            }
        }
    }
}