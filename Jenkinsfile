node{

 def tomcatWeb = 'C:\\apache-tomcat-8.5.64\\webapps\\'
 def mvnHome = tool name: 'maven-3', type:'maven'
 
 stage ('SCM CheckOut') {
   git 'https://github.com/jona987/helloworld.git'
 }
 
 stage ('Build Stage') {
    bat "${mvnHome}/bin/mvn package"  
 }
 
 /*stage ('SONAR Analysis') {
   withSonarQubeEnv('sonar-1'){
     bat "${mvnHome}/bin/mvn sonar:sonar"
   }  
 }*/
 
 stage ('Deploy Code') {
    bat "copy target\\helloWorld.war \"${tomcatWeb}\\jenkinswar.war\""
 } 
}