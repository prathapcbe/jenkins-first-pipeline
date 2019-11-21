pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script {
                       def build = docker.build("495877519973.dkr.ecr.us-west-1.amazonaws.com/jenkins-ecr:latest",".")
                        sh ($(aws ecr get-login --no-include-email --region us-west-1))
                        build.push("495877519973.dkr.ecr.us-west-1.amazonaws.com/jenkins-ecr:latest")
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
