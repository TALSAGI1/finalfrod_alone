pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/YOUR_GITHUB_USERNAME/finalfrod_alone.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    def image = docker.build('https://github.com/TALSAGI1/finalfrod_alone')
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_credentials') {
                        image.push("${env.BUILD_NUMBER}")
                        image.push('latest')
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo Deploying...'
            }
        }
    }
}
