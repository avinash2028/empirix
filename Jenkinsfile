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
          sh  'echo "build"'
        }
      }
      stage('Unit Test') {
        steps {
          sh 'echo "testing"'
        }
      }
      stage('Get Deployment script'){
         steps {
             git 'https://github.com/avinash2028/empirix.git'
         } 
      }
      stage('Copy file to remote server') {
        steps {
          sh '''
              scp -r my-app/target/my-app-1.0-SNAPSHOT.jar root@10.1.0.112:/tmp/
              scp deploy_script.py root@10.1.0.112:/tmp/
              
                 
             '''
            }
       }
       stage('Deploying') {
           steps {
               sh 'ssh -tt root@10.1.0.112 "cd /tmp && ./deploy_script.py" $dir'
           }
       }
    }
}