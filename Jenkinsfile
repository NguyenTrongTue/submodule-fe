pipeline {
    agent any 

    environment {
        DOCKER_IMAGE = 'nttue/submodule-fe:v1'
    }

    stages {
        stage('Clone') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/NguyenTrongTue/submodule-fe.git',
                        credentialsId: 'github-cred'
                    ]]
                ])
            }
        }

        stage('Build & Push Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'submodule-fe', url: 'https://index.docker.io/v1/') {
                        sh "docker build -t $DOCKER_IMAGE ."
                        sh "docker push $DOCKER_IMAGE"
                    }
                }
            }
        }
    }
}
