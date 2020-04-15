pipeline{
    agent any
    stages {
      stage('pull the code'){
        steps{
          git 'https://github.com/avinash2028/empirix.git' 
       
        }         
      }
      stage('build') {
        steps {
          sh  'cd my-app; mvn package"'
        }
      }
      stage('Unit Test') {
        steps {
          sh 'Testing'
        }
      }
      stage('Copy file to remote server') {
        steps {
          sh '''
              scp -r my-app/target/my-app-1.0-SNAPSHOT.jar root@10.1.0.120:/tmp/
              scp deploy_script.py root@10.1.0.120:/tmp/
              
                 
             '''
            }
       }
       stage('Deploying') {
           steps {
               sh 'ssh -tt root@10.1.0.120 "cd /tmp && ./deploy_script.sh" $dir'
           }
       }
    }
}
