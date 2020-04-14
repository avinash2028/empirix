pipeline{
    agent any
    stages {
    stage('pull the code'){
       steps{
         git 'https://github.com/pdurbin/maven-hello-world.git' 
       
          }         
    }
        stage('build') {
            steps {
                sh  'cd my-app; mvn package'
            }
        }
        stage('Unit Test') {
            steps {
                sh 'echo "testing"'
            }
        }
        stage('Deploying') {
            steps {
                sh 'echo "Deploying"'
            }
        }
    }
}