pipeline {
    agent any
    stages {
	    stage('SCM Checkout'){
             steps{    
		    git 'https://github.com/marutibhosale/new_chatapp.git'
		 }
	    }
	    
		    stage('Code Analysis') {
	    environment {
		scannerHome = tool 'sonar-scanner';
	    }
			     steps {
		withSonarQubeEnv('sonarqube') {
		    sh "${scannerHome}/bin/sonar-scanner"
		}
		}
	}
	  
   
    		  stage("Quality Gate") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                    waitForQualityGate abortPipeline: true
                }
	    
        }
    }
}
}
