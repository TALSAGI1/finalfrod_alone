pipeline {
    agent any

    environment {
        GIT_CREDENTIALS = credentials('github-pat') 
        DOCKER_CREDENTIALS = credentials('docker-credentials-id') 
    }
    
    stages {
        stage('Check Docker') {
            steps {
                bat 'docker --version'  // Use 'bat' for Windows command
            }
        }
        stage('Clone') {
            steps {
                git url: 'https://github.com/TALSAGI1/finalfrod_alone.git', credentialsId: 'github-pat', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                script {
                    def image = docker.build('talsa/tal_ex2_exam')
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-credentials-id') {
                        image.push("${env.BUILD_NUMBER}")
                        image.push('latest')
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                bat 'echo Deploying...'  // Use 'bat' for Windows command
            }
        }
    }
}
