pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
               steps {
                    sh '''
                    pwd
                    ls -la
                    mkdir -p /var/jenkins_home/env.BRANCH_NAME
                    '''
                
            }
        }
    }
}