node('docker'){
    

    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */
        git 'https://github.com/nagendra464/docekr.git'
       
    }
    stage('Build mvn'){
        sh label: '', script: 'mvn clean install'
    }
    stage('Build image') {
        /* This builds the actual image */

        docker = docker.build("nagendra464/nag")
    }

   
    
    
}
