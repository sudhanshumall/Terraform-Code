pipeline {
    agent any

    stages {
        stage('Build') {
            steps {

               branch=env.GIT_BRANCH
               sh '''
                    printenv
                    pwd
                    ls -la
                    mkdir -p /var/jenkins_home/$branch
                    '''
            }
        }
    }
}