pipeline {
  agent any
    stages {
      stage('usernamePassword') {
              steps {
        script {
	      withCredentials([usernamePassword(credentialsId: 'GIT_CREDS', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
	          sh '''
	          		pwd
	          		ls
	          '''
	          sh '''./install.sh
	          '''
	      }
        }
      }
    }
  }
}
