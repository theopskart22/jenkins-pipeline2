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
                sh "cd ${WORKSPACE}/"
		sh " ls -lhrt"
                sh "mv target/*.jar build-${BUILD_NUMBER}.jar"
		sh "curl -v -u admin:admin --upload-file build-${BUILD_NUMBER}.jar https://nexus.techmartguru.com/repository/build/v1.0/build-${BUILD_NUMBER}.jar"
            }
        }
        }
       stage('Deploy On Server ') {
            steps {
            script {
		sh "mkdir /tmp/app"
		sh "cd /tmp/app && ls -lhrt && curl -O -u admin:admin https://nexus.techmartguru.com/repository/build/v1.0/build-${BUILD_NUMBER}.jar"
		sh "sudo java -jar build-${BUILD_NUMBER}.jar &"    
            }
        }
        } 
        
 }		
}
