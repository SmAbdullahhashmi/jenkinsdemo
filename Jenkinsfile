pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'printenv'
                sh 'docker build -t hashmifctraining/jenkinsdemo:${BUILD_ID} .'
            }
        }
        stage('Publish') {
            steps {
                withDockerRegistry([credentialsId: 'docker_hub', url: '']) {
                    sh 'docker push hashmifctraining/jenkinsdemo:${BUILD_ID}'
                }
            }
        }
    }
}

