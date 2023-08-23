pipeline {
    agent any

    stages {
    
        stage("CI/CD: Warm Up"){
            steps {
                script {
                    sh "java -version"
		    sh "export MAVEN_HOME=/opt/maven && export PATH=$PATH:$MAVEN_HOME/bin"

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
		
     post { 
         always { 
            cleanWs()
         }
    }		
}
