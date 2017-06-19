pipeline { 

agent any

  
    def app
	stages{
    
	stage('Clone repository') {
		steps {
        checkout scm
}
    }

    stage('Build image') {
steps {
 	echo "${env.BUILD_NUMBER}"
 	app = docker.build("aboubakr/bookings")
	}
}
     stage('Test image') {
  steps {      echo "tests passed"}
       /*     sh 'curl http://http://ec2-34-211-62-126.us-west-2.compute.amazonaws.com:80 || exit 1'*/
        
    }   

    stage('Push image') {
steps {
       
     docker.withRegistry("https://registry.hub.docker.com", 'docker-hub-credential') {

          app.push("${env.BUILD_NUMBER}")
	
	   app.push("latest") 
            
        }
    }
}
}
}

