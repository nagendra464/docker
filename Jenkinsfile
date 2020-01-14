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

        sh label: '', script: 'docker build -t nagendra464/naglogin .'
    }
    stage('Push image') {
        withCredentials([string(credentialsId: 'dockerpwd', variable: 'dockerpwd')]) {
            sh label: '', script: "docker login -u nagendra464 -p ${dockerpwd}"
    }
        
        sh label: '', script: 'docker push nagendra464/naglogin'
    }

   
    
    
}
