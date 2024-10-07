pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                println "Build WORKSPACE ${WORKSPACE}"
                sh '''
                ls -al && pwd
                mvn clean install -DskipTests 
                docker build -t "food-app:latest" .
                docker images
                '''
            }
        }
    }
}
