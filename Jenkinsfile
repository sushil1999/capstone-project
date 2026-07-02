pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = 'dockerhub'
        DOCKER_USER = 'sushilsaroya'
        IMAGE_TAG = 'v1'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/sushil1999/capstone-project.git'
            }
        }

        stage('Build Images') {
            steps {
                sh 'docker build -t $DOCKER_USER/product:$IMAGE_TAG product-service'
                sh 'docker build -t $DOCKER_USER/order:$IMAGE_TAG order-service'
                sh 'docker build -t $DOCKER_USER/inventory:$IMAGE_TAG inventory-service'
                sh 'docker build -t $DOCKER_USER/frontend:$IMAGE_TAG frontend'
            }
        }

        stage('Push Images') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: "${DOCKERHUB_CREDENTIALS}",
                    usernameVariable: 'USERNAME',
                    passwordVariable: 'PASSWORD'
                )]) {

                    sh '''
                    echo "$PASSWORD" | docker login -u "$USERNAME" --password-stdin

                    docker push sushilsaroya/product:v1
                    docker push sushilsaroya/order:v1
                    docker push sushilsaroya/inventory:v1
                    docker push sushilsaroya/frontend:v1
                    '''
                }
            }
        }

        stage('Kubernetes Connection Test') {
            steps {
                sh 'kubectl get nodes'
            }
        }
    }
}
