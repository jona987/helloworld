node{

 def tomcatWeb = 'C:\\apache-tomcat-8.5.64\\webapps'
 def mvnHome = tool name: 'maven-3', type:'maven'
 def tomcatStatus = ''
 stage ('SCM CheckOut') {
   echo " ####### CheckOut Code #########"
   git 'https://github.com/jona987/helloworld.git'
 }
 
 stage ('Build Stage') {
 	echo " ####### Building Code #########"
    bat "${mvnHome}/bin/mvn package"  
 }
 
 /*stage ('SONAR Analysis') {
   withSonarQubeEnv('sonar-1'){
     bat "${mvnHome}/bin/mvn sonar:sonar"
   }  
 }*/
 
 stage ('Deploy Code') {
    echo " ####### Deploying Code #########"
    bat "copy target\\helloWorld.war C:\\apache-tomcat-8.5.64\\webapps\\helloWorld.war"
 } 
}