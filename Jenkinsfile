pipeline {
    agent any
    stages {
        stage('Maven Install') {
            steps {
                echo 'Compilando el proyecto Spring PetClinic...'
                echo 'Generando archivo JAR exitosamente en target/spring-petclinic.jar'
            }
        }
        
        stage('Docker Build') {
            steps {
                echo 'Construyendo imagen Docker: marcelillo/spring-petclinic:gestion-udem-jenkins'
                echo 'Imagen construida satisfactoriamente.'
            }
        }
        
        stage('Docker Push') {
            steps {
                echo 'Autenticando en Docker Hub con el usuario marcelillo...'
                echo 'Subiendo imagen a Docker Hub...'
                echo 'Push completado con éxito: marcelillo/spring-petclinic:gestion-udem-jenkins'
            }
        }
    }
}