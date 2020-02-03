node('docker'){
    

    stage('Clone repository') {
        
        git 'https://github.com/nagendra464/docker.git'
       
    }
    stage('Build mvn'){
        sh label: '', script: 'mvn clean install'
    }
    stage('Build image') {
       

        sh label: '', script: 'docker build -t nagendra464/naglogin:2 .'
    }
    stage('Push image') {
        withCredentials([string(credentialsId: 'dockerpwd', variable: 'dockerpwd')]) {
            sh label: '', script: "docker login -u nagendra464 -p ${dockerpwd}"
    }
        
        sh label: '', script: 'docker push nagendra464/naglogin:2'
    }

    stage('create container'){
        sh label: '', script: 'docker run --name testlogin -d -p 80:8080 nagendra464/naglogin:2'   
        
    }
    
}
