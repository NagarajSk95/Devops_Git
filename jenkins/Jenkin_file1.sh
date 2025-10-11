pipeline {
    agent any
    stages{
        stage('stage1'){
            steps {
                sh ' echo Build is sucessful'
            }
        }
         stage('stage2'){
            steps {
                sh ' echo Build is sucessful on stage2'
            }
        }
    }
}
