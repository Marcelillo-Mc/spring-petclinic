pipeline {
    agent any
    stages {
        stage('Maven Install') {
            steps {
                // Usamos bat para correr la compilación saltando los tests de forma directa
                bat 'mvn clean install -DskipTests'
            }
        }
        
        stage('Docker Build') {
            steps {
                bat 'docker build -t marcelillo/spring-petclinic:gestion-udem-jenkins .'
            }
        }
        
        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                    bat "docker login -u %dockerHubUser% -p %dockerHubPassword%"
                    bat 'docker push marcelillo/spring-petclinic:gestion-udem-jenkins'
                }
            }
        }
    }
}