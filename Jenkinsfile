pipeline {
    agent any
       environment {
        MAVEN_HOME = '/opt/maven'
        PATH = "${MAVEN_HOME}/bin:${PATH}"
    }
    stages {
    
        stage("CI/CD: Warm Up"){
            steps {
                script {
                    sh '''
		     java -version
		    '''
                }
            }
        }

        stage('Build ') {
            steps {
            script {
                sh "cd ${WORKSPACE}"
                sh "mvn clean install "
            }
        }
        }
        stage('Verify ') {
            steps {
            script {
                sh "cd ${WORKSPACE} "
                sh "ls -lhrt"
            }
        }
        }        
        
 }		
}
