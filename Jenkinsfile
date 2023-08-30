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
        stage('Upload to Artifactory ') {
            steps {
            script {
                sh "cd ${WORKSPACE}/target"
		sh " ls -lhrt"
                sh "mv *.jar build-${BUILD_NUMBER}.jar"
		sh "curl -v -u admin:admin --upload-file build-${BUILD_NUMBER}.jar https://nexus.techmartguru.com/repository/build/v1.0/build-${BUILD_NUMBER}.jar"
            }
        }
        }     
        
 }		
}
