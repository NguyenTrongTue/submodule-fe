pipeline {
    agent any 
    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                url: 'https://github.com/NguyenTrongTue/submodule-fe.git'
            }
        }
        stage('Clone stage') {
            steps {
                withDockerRegistry(credentialsId: 'submodule-fe', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t nttue/submodule-fe:v1 .'
                    sh 'docker push nttue/submodule-fe:v1'
                }
            }
        }
        
    }
}